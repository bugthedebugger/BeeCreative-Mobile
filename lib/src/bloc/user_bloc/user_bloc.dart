import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/bloc/user_bloc/user_bloc_export.dart';
import 'dart:async';
import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';
import 'package:BeeCreative/src/data/models/user/user_model.dart';
import 'package:BeeCreative/src/data/repository/user_repository.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    }
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
    try {
      await _repository.requestLogout(token: _sharedPreferences.get('token'));
      await _firebaseMessaging.deleteInstanceID();
      _sharedPreferences.clear();
      _googleSignIn.signOut();
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
      _sharedPreferences.setString('token', registeredUser.data.token);
      _sharedPreferences.setString('userName', registeredUser.data.userName);
      _sharedPreferences.setString('avatar', registeredUser.data.photo);
      _sharedPreferences.setString('email', registeredUser.data.email);
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
