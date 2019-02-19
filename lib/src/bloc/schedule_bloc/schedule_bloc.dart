import 'package:BeeCreative/src/bloc/schedule_bloc/schedule_bloc_export.dart';
import 'package:BeeCreative/src/data/repository/schedule_respository.dart';
import 'package:bloc/bloc.dart';
import 'package:BeeCreative/src/data/models/user/user_error.dart';

class ScheduleBloc extends Bloc<ScheduleEvents, ScheduleState> {
  final ScheduleRepository _schedulesRepository;

  ScheduleBloc(this._schedulesRepository) : super();

  void scheduleRequestInitiated(String token) {
    dispatch(GetScheduleFromNetwork((b) => b..token = token));
  }

  @override
  ScheduleState get initialState => ScheduleState.initial();

  @override
  Stream<ScheduleState> mapEventToState(
      ScheduleState currentState, ScheduleEvents event) async* {
    if (event is GetScheduleFromNetwork) {
      yield* mapScheduleRequestInitiated(event);
    }
  }

  Stream<ScheduleState> mapScheduleRequestInitiated(
      GetScheduleFromNetwork event) async* {
    if (event.token.isEmpty) {
      yield ScheduleState.initial();
    } else {
      yield ScheduleState.loading();
      try {
        yield ScheduleState.loading();
        final schedules =
            await _schedulesRepository.getSchedulesFromNetwork(event.token);
        yield ScheduleState.success(schedules);
      } on NoSchedulesError catch (e) {
        yield ScheduleState.failure(e.message);
      } on Unauthenticated catch (e) {
        yield ScheduleState.failure(e.message);
      }
    }
  }
}
