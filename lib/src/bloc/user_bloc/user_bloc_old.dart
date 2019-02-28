import 'package:BeeCreative/src/bloc/user_bloc/user_bloc_export.dart';
import 'package:BeeCreative/src/data/repository/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:BeeCreative/src/data/models/user/user_error.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;
  String _idToken;

  UserBloc(this._userRepository) : super();

  void _onLoginRequestInitiated() {
    dispatch(UserLoginRequested((b) => b..token = _idToken));
  }

  void googleLoginRequest() {
    dispatch(GoogleUserLoginRequest());
  }

  void _storeUserToLocal() {
    dispatch(StoreUserToSharedPreferences());
  }

  void _userStoredSuccessfully() {
    dispatch(UserStoredSuccessfully());
  }

  @override
  UserState get initialState => UserState.initial();

  @override
  Stream<UserState> mapEventToState(
      UserState currentState, UserEvent event) async* {
    if (event is UserLoginRequested) {
      yield* mapLoginRequestInitiated(event);
    } else if (event is GoogleUserLoginRequest) {
      yield* mapGoogleLoginRequestInitiated(event);
    } else if (event is StoreUserToSharedPreferences) {
      yield* mapStoreUserToSharedPreferences(currentState, event);
    } else if (event is UserStoredSuccessfully) {
      yield* mapUserStoredSucceessfully(currentState);
    }
  }

  Stream<UserState> mapLoginRequestInitiated(UserLoginRequested event) async* {
    if (event.token.isEmpty) {
      yield UserState.initial();
    } else {
      yield UserState.loading();
      try {
        final userResult = await _userRepository.requestLogin(event.token);
        yield UserState.success(userResult);
        _storeUserToLocal();
      } on NoUserException catch (e) {
        yield UserState.failure(e.message);
      } on UserError catch (e) {
        yield UserState.failure(e.message);
      }
    }
  }

  Stream<UserState> mapGoogleLoginRequestInitiated(
      GoogleUserLoginRequest event) async* {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      hostedDomain: "karkhana.asia",
      scopes: ['email', 'profile', 'openid'],
    );
    try {
      yield UserState.loading();
      var googleUser = await _googleSignIn.signIn();
      var auth = await googleUser.authentication;
      _idToken = auth.idToken;
      yield UserState.googlLogin(_idToken);
      _onLoginRequestInitiated();
    } catch (e) {
      yield UserState.failure("Google Sign in failed!");
    }
  }

  Stream<UserState> mapStoreUserToSharedPreferences(
      UserState state, StoreUserToSharedPreferences event) async* {
    if (state.user.data != null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      try {
        prefs.setString("token", state.user.data.token);
        prefs.setString("userName", state.user.data.userName);
        prefs.setString("avatar", state.user.data.photo);
        prefs.setString("email", state.user.data.email);
        _userStoredSuccessfully();
        yield UserState.dataStore(state.user, _idToken);
      } catch (_) {
        prefs.clear();
      }
    }
  }

  Stream<UserState> mapUserStoredSucceessfully(UserState state) async* {
    yield UserState.dataStore(state.user, _idToken);
  }
}
