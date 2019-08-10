import 'package:BeeCreative/src/bloc/appreciation_bloc/appreciation_bloc_export.dart';
import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';
import 'package:BeeCreative/src/data/models/momonation/user/user.dart';
import 'package:BeeCreative/src/data/models/momonation/user_list/user_list.dart';
import 'dart:async';
import 'package:meta/meta.dart';

import 'package:BeeCreative/src/data/repository/momonation_repository.dart';

class AppreciationBloc extends Bloc {
  final MomonationRepository _repository;

  AppreciationBloc(this._repository) {
    init();
  }

  StreamController<AppreciationEvents> _eventStreamController =
      StreamController<AppreciationEvents>.broadcast();
  Stream<AppreciationEvents> get eventStream => _eventStreamController.stream;
  Sink<AppreciationEvents> get _eventSink => _eventStreamController.sink;

  StreamController<UserList> _userListStreamController =
      StreamController<UserList>.broadcast();
  Stream<UserList> get userListStream => _userListStreamController.stream;
  Sink<UserList> get _userListSink => _userListStreamController.sink;

  void init() {
    _eventStreamController.stream.listen(_mapEventsToState);
  }

  void _mapEventsToState(AppreciationEvents event) {
    if (event is GetUsers) {
      _mapGetUsers(event);
    } else if (event is AppreciateUser) {
      _mapAppreciateUser(event);
    }
  }

  void appreciateUser({
    @required User user,
    @required int amount,
    @required String title,
    @required String message,
  }) {
    dispatch(
      AppreciateUser(
        (b) => b
          ..user.replace(user)
          ..amount = amount
          ..title = title
          ..message = message,
      ),
    );
  }

  Future<void> _mapAppreciateUser(AppreciateUser event) async {
    try {
      await _repository.transfer(
        amount: event.amount,
        description: event.message,
        title: event.title,
        user: event.user,
      );
      dispatch(AppreciationSuccess());
    } on MomonationException catch (e) {
      dispatch(AppreciationError((b) => b..message = e.message));
    } on NoConnection catch (e) {
      dispatch(AppreciationError((b) => b..message = e.message));
    } catch (_) {
      print(_);
      dispatch(AppreciationError((b) => b..message = _.toString()));
    }
  }

  void getUsers() {
    dispatch(GetUsers());
  }

  Future<void> _mapGetUsers(GetUsers event) async {
    try {
      final response = await _repository.getUsers();
      dispatch(
        GetUsersSuccess(
          (b) => b..users.replace(response),
        ),
      );
      addUserList(response);
    } on MomonationException catch (e) {
      dispatch(AppreciationError((b) => b..message = e.message));
    } on NoConnection catch (e) {
      dispatch(AppreciationError((b) => b..message = e.message));
    } catch (_) {
      print(_);
      dispatch(AppreciationError((b) => b..message = _.toString()));
    }
  }

  void addUserList(UserList userList) {
    _userListSink.add(userList);
  }

  void dispatch(AppreciationEvents event) {
    _eventSink?.add(event);
  }

  @override
  void dispose() {
    _eventStreamController?.close();
    _userListStreamController?.close();
  }
}
