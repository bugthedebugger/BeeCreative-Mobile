library schedule_state;

import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:built_value/built_value.dart';

part 'schedule_state.g.dart';

abstract class ScheduleState
    implements Built<ScheduleState, ScheduleStateBuilder> {
  bool get isLoading;
  ScheduleResponse get scheduleResponse;
  String get error;
  bool get isReloading;

  ScheduleState._();

  factory ScheduleState([updates(ScheduleStateBuilder b)]) = _$ScheduleState;

  factory ScheduleState.initial() {
    return ScheduleState((b) => b
      ..isLoading = false
      ..scheduleResponse.replace(ScheduleResponse())
      ..isReloading = false
      ..error = '');
  }

  factory ScheduleState.loading() {
    return ScheduleState((b) => b
      ..isLoading = true
      ..scheduleResponse.replace(ScheduleResponse())
      ..error = ''
      ..isReloading = false);
  }

  factory ScheduleState.failure(String error) {
    return ScheduleState((b) => b
      ..isLoading = false
      ..scheduleResponse.replace(ScheduleResponse())
      ..error = error
      ..isReloading = false);
  }

  factory ScheduleState.reload(ScheduleResponse scheduleResponse) {
    return ScheduleState((b) => b
      ..isLoading = false
      ..scheduleResponse.replace(scheduleResponse)
      ..error = ''
      ..isReloading = true);
  }

  factory ScheduleState.success(ScheduleResponse scheduleResponse) {
    return ScheduleState((b) => b
      ..isLoading = false
      ..scheduleResponse.replace(scheduleResponse)
      ..error = ''
      ..isReloading = false);
  }
}
