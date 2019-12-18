import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/bloc/user_bloc/user_bloc_export.dart';
import 'dart:async';
import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';
import 'package:BeeCreative/src/data/models/user/user_model.dart';
import 'package:BeeCreative/src/data/repository/user_repository.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:meta/meta.dart';

class UserBloc implements Bloc {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  UserRepository _repository;
  User registeredUser;
  String token;
  String _idToken;
  SharedPreferences _sharedPreferences;
  GoogleSignIn _googleSignIn;

  UserBloc(this._repository, this._sharedPreferences, this._googleSignIn) {
    userEventStreamController.stream.listen((UserEvent event) {
      _mapEventsToState(event);
    });
  }

  /// Stream controller for user events
  StreamController<UserEvent> userEventStreamController =
      StreamController<UserEvent>.broadcast();
  Stream<UserEvent> get userEvent => userEventStreamController.stream;
  Sink<UserEvent> get _inUserEvent => userEventStreamController.sink;

  /// Stream controller for user
  StreamController<User> userStreamController =
      StreamController<User>.broadcast();
  Stream<User> get user => userStreamController.stream;
  Sink<User> get _registerUser => userStreamController.sink;

  void _mapEventsToState(UserEvent event) async {
    if (event is GoogleUserLoginRequest) {
      _mapGoogleUserLoginRequest(event);
    } else if (event is UserLoginRequested) {
      _mapUserLoginRequest(event);
    } else if (event is UserStoredSuccessfully) {
    } else if (event is UserLogoutRequested) {
      _mapUserLogoutRequest(event);
    } else if (event is EmailLoginRequested) {
      _mapEmailLoginRequested(event);
    }
  }

  void _mapEmailLoginRequested(EmailLoginRequested event) async {
    try {
      final User response = await _repository.emailLogin(
        email: event.email,
        password: event.password,
      );
      _storeToPreferences(
        token: response.data.token,
        avatar: response.data.photo,
        email: response.data.email,
        userName: response.data.userName,
        momonation: false,
        moodmeter: false,
      );
      dispatch(UserLoginSuccess());
    } on Unauthenticated catch (e) {
      dispatch(
        UserErrorEvent(
          (b) => b..message = e.message,
        ),
      );
    } catch (_) {
      dispatch(
        UserErrorEvent(
          (b) => b..message = _.message,
        ),
      );
    }
  }

  void emailLogin({@required String email, @required String password}) {
    dispatch(
      EmailLoginRequested(
        (b) => b
          ..email = email
          ..password = password,
      ),
    );
  }

  void _mapGoogleUserLoginRequest(GoogleUserLoginRequest event) async {
    try {
      var googleUser = await _googleSignIn.signIn();
      var authUser = await googleUser.authentication;
      _idToken = authUser.idToken;
      _initiateServerLogin();
    } catch (error, stackTrace) {
      print("Error: $error, Stack: $stackTrace");
      dispatch(UserErrorEvent((b) => b..message = error.toString()));
    }
  }

  void _mapUserLogoutRequest(UserLogoutRequested event) async {
    bool dispatched = false;
    try {
      try {
        await _repository.requestLogout(token: _sharedPreferences.get('token'));
      } catch (e) {
        print('Logout exception $e');
        if (e is Unauthenticated) {
          dispatched = true;
          await _firebaseMessaging.deleteInstanceID();
          _sharedPreferences.clear();
          _googleSignIn.signOut();
          dispatch(UserLoggedOut());
        } else {
          throw e;
        }
      }
      if (!dispatched) {
        await _firebaseMessaging.deleteInstanceID();
        _sharedPreferences.clear();
        _googleSignIn.signOut();
      }
      dispatch(UserLoggedOut());
    } catch (_) {
      dispatch(UserErrorEvent((b) => b..message = _.toString()));
    }
  }

  void _mapUserLoginRequest(UserLoginRequested event) async {
    try {
      var response = await this._repository.requestLogin(
            _idToken,
          );
      registeredUser = response;
      token = registeredUser.data.token;
      _storeToPreferences(
        token: token,
        avatar: registeredUser.data.photo,
        email: registeredUser.data.email,
        userName: registeredUser.data.userName,
      );
      registerUser(registeredUser);
      _userLoggedIn();
    } on UserError catch (error) {
      print(error.message);
      dispatch(UserErrorEvent((b) => b..message = error.message));
    } catch (error, stackTrace) {
      print("Error: $error, StackTrace: $stackTrace");
      dispatch(UserErrorEvent((b) => b..message = error.toString()));
    }
  }

  void _storeToPreferences({
    @required String token,
    @required String userName,
    @required String avatar,
    @required String email,
    bool momonation = true,
    bool moodmeter = true,
  }) {
    _sharedPreferences.setString('token', token);
    _sharedPreferences.setString('userName', userName);
    _sharedPreferences.setString('avatar', avatar);
    _sharedPreferences.setString('email', email);
    _sharedPreferences.setBool('momonation_enabled', momonation);
    _sharedPreferences.setBool('moodmeter_enabled', moodmeter);
  }

  void logout() {
    dispatch(UserLogoutRequested());
  }

  void initiateGoogleLogin() {
    dispatch(GoogleUserLoginRequest());
  }

  void _initiateServerLogin() {
    dispatch(UserLoginRequested((b) => b..token = _idToken));
  }

  void _userLoggedIn() {
    dispatch(UserStoredSuccessfully());
  }

  void dispatch(UserEvent event) {
    _inUserEvent.add(event);
  }

  void registerUser(User user) {
    _registerUser.add(user);
  }

  @override
  void dispose() {
    userEventStreamController.close();
    userStreamController.close();
  }
}
