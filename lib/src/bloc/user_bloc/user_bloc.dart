import 'package:BeeCreative/src/bloc/user_bloc/user_bloc_export.dart';
import 'package:BeeCreative/src/data/repository/user_repository.dart';
import 'package:bloc/bloc.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  UserBloc(this._userRepository) : super();

  void onLoginRequestInitiated(String token) {
    dispatch(UserLoginRequested((b) => b..token = token));
  }

  @override
  UserState get initialState => UserState.initial();

  @override
  Stream<UserState> mapEventToState(
      UserState currentState, UserEvent event) async* {
    if (event is UserLoginRequested) {
      yield* mapLoginRequestInitiated(event);
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
      } on NoUserException catch (e) {
        yield UserState.failure(e.message);
      }
    }
  }
}
