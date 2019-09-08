import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'dart:async';
import 'package:BeeCreative/src/bloc/mood_meter_bloc/mood_meter_bloc_export.dart';
import 'package:BeeCreative/src/data/repository/mood_meter_repository.dart';
import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';
import 'package:meta/meta.dart';

class MoodMeterBloc extends Bloc {
  final MoodMeterRepository _repository;

  MoodMeterBloc(this._repository);

  StreamController<MoodMeterEvents> _eventsController =
      StreamController<MoodMeterEvents>.broadcast();
  Stream<MoodMeterEvents> get eventStream => _eventsController.stream;
  Sink<MoodMeterEvents> get _eventSink => _eventsController.sink;

  void init() {
    _eventsController.stream.listen(_mapEventsToState);
  }

  void _mapEventsToState(MoodMeterEvents event) {
    if (event is SaveMood) {
      _mapSaveMood(event);
    }
  }

  void saveMood({@required int mood}) {
    dispatch(SaveMood((b) => b..mood = mood));
  }

  void _mapSaveMood(SaveMood event) async {
    try {
      await _repository.saveMood(mood: event.mood);
      dispatch(MoodMeterSuccess());
    } on Unauthenticated catch (e) {
      print(e.message);
      dispatch(MoodMeterError((b) => b..message = e.message));
    } catch (_) {
      print(_);
      dispatch(MoodMeterError((b) => b..message = _.toString()));
    }
  }

  void dispatch(MoodMeterEvents event) {
    _eventSink?.add(event);
  }

  @override
  void dispose() {
    _eventsController?.close();
  }
}
