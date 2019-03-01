// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Attendee.serializer)
      ..add(AttendeeData.serializer)
      ..add(DeliveryReport.serializer)
      ..add(DeliveryReportResponse.serializer)
      ..add(Schedule.serializer)
      ..add(ScheduleResponse.serializer)
      ..add(ScheduleResponseData.serializer)
      ..add(SchedulesPagination.serializer)
      ..add(Student.serializer)
      ..add(User.serializer)
      ..add(UserData.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AttendeeData)]),
          () => new ListBuilder<AttendeeData>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ScheduleResponseData)]),
          () => new ListBuilder<ScheduleResponseData>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Schedule)]),
          () => new ListBuilder<Schedule>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Student)]),
          () => new ListBuilder<Student>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
