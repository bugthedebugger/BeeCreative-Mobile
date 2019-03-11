import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'dart:async';

import 'package:BeeCreative/src/bloc/student_randomizer_bloc/student_randomizer_events.dart';
import 'package:BeeCreative/src/data/models/student/student_model.dart';
import 'package:built_collection/built_collection.dart';

class StudentRandomizerBloc extends Bloc {
  List<Student> randomStudents = [];
  List<Student> students;

  StudentRandomizerBloc() {
    _randomizerEventStreamController.stream.listen(_mapEventsToState);
  }

  StreamController<RandomizerEvent> _randomizerEventStreamController =
      StreamController<RandomizerEvent>.broadcast();
  Stream<RandomizerEvent> get randomizerEventStream =>
      _randomizerEventStreamController.stream;
  Sink<RandomizerEvent> get _randomizerEventSink =>
      _randomizerEventStreamController.sink;

  StreamController<Student> _studentStreamController =
      StreamController<Student>.broadcast();
  Stream<Student> get studentStream => _studentStreamController.stream;
  Sink<Student> get _studentSink => _studentStreamController.sink;

  void _mapEventsToState(RandomizerEvent event) {
    if (event is InitializeRandomizer) {
      _mapInitializeRandomizer(event);
    } else if (event is RandomStudent) {
      _mapRandomStudent(event);
    } else if (event is ReinitializeRandomizerEvent) {
      _mapReinitializeRandomizer(event);
    } else if (event is NoStudentsEvent) {
      _addData(null);
    }
  }

  void random() {
    dispatch(RandomStudent());
  }

  void _mapRandomStudent(RandomStudent event) {
    if (randomStudents.length > 0) {
      _addData(randomStudents.last);
      randomStudents.removeLast();
    } else if (randomStudents.length <= 0 && students.length > 0) {
      reInitialize();
    } else {
      dispatch(NoStudentsEvent());
    }
  }

  void _mapReinitializeRandomizer(ReinitializeRandomizerEvent event) {
    randomStudents.addAll(students);
    random();
  }

  void reInitialize() {
    dispatch(ReinitializeRandomizerEvent());
  }

  void initializeRandomizer(BuiltList<Student> students) {
    this.students = students.toList();
    dispatch(
      InitializeRandomizer(),
    );
  }

  void _mapInitializeRandomizer(InitializeRandomizer event) {
    if (randomStudents.length <= 0 && students.length > 0) {
      randomStudents.addAll(students);
      random();
    } else if (randomStudents.length > 0) {
      random();
    } else {
      dispatch(NoStudentsEvent());
    }
  }

  void dispatch(RandomizerEvent event) {
    _randomizerEventSink.add(event);
  }

  void _addData(Student student) {
    _studentSink.add(student);
  }

  @override
  void dispose() {
    _randomizerEventStreamController.close();
    _studentStreamController.close();
  }
}
