import 'dart:async';

import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/bloc/schedule_bloc/schedule_bloc_export.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/data/repository/schedule_respository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';

class ScheduleBloc implements BlocBase {
  ScheduleRepository _repository;
  SharedPreferences _preferences;
  String _token;

  ScheduleBloc(this._repository, this._preferences) {
    this._token = this._preferences.getString('token');
  }

  void init() {
    scheduleEventsStreamController.stream.listen(_mapEventsToState);
    getSchedules();
  }

  StreamController<ScheduleEvents> scheduleEventsStreamController =
      StreamController<ScheduleEvents>.broadcast();
  Stream get scheduleEventsStream => scheduleEventsStreamController.stream;
  Sink get _scheduleEventsSink => scheduleEventsStreamController.sink;

  void _mapEventsToState(ScheduleEvents event) async {
    if (event is GetScheduleFromNetwork) {
      _mapGetScheduleFromNetwork(event);
    } else if (event is ReloadSchedulesFromNetwork) {
      _mapReloadSchedulesFromNetwork(event);
    }
  }

  void getSchedules() {
    dispatch(GetScheduleFromNetwork((b) => b..token = _token));
  }

  void reloadSchedules() {
    dispatch(ReloadSchedulesFromNetwork((b) => b..token = _token));
  }

  void _loading() {
    dispatch(SchedulesLoading());
  }

  void _reloading() {
    dispatch(SchedulesReloading());
  }

  void _noSchedule() {
    dispatch(NoSchedules());
  }

  void scheduleError(String message) {
    dispatch(SchedulesError((b) => b..message = message));
  }

  void _success(ScheduleResponse scheduleResponse) {
    dispatch(
      ScheduleLoadedSuccessfully(
        (b) => b..scheduleResponse.replace(scheduleResponse),
      ),
    );
  }

  void _mapGetScheduleFromNetwork(GetScheduleFromNetwork event) async {
    try {
      _loading();
      ScheduleResponse response =
          await _repository.getSchedulesFromNetwork(_token);
      if (response.data == null)
        _noSchedule();
      else
        _success(response);
    } on NoConnection catch (error) {
      scheduleError(error.message);
    } on NoSchedulesError catch (error) {
      scheduleError(error.message);
    } catch (error) {
      scheduleError(error.toString());
    }
  }

  void _mapReloadSchedulesFromNetwork(ReloadSchedulesFromNetwork event) async {
    try {
      _reloading();
      ScheduleResponse response =
          await _repository.getSchedulesFromNetwork(_token);
      if (response.data == null)
        _noSchedule();
      else
        _success(response);
    } on NoConnection catch (error) {
      scheduleError(error.message);
    } on NoSchedulesError catch (error) {
      scheduleError(error.message);
    } catch (error) {
      scheduleError(error.message);
    }
  }

  void dispatch(ScheduleEvents event) {
    _scheduleEventsSink.add(event);
  }

  @override
  void dispose() {
    scheduleEventsStreamController.close();
  }
}
