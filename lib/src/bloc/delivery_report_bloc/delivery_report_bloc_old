import 'package:BeeCreative/src/bloc/delivery_report_bloc/delivery_report_bloc_export.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/data/network/delivery_report_source.dart';
import 'package:bloc/bloc.dart';

class DeliveryReportBloc
    extends Bloc<DeliveryReportEvent, DeliveryReportState> {
  @override
  DeliveryReportState get initialState => DeliveryReportState.initial();

  final DeliveryReportDataSource _deliveryReportDataSource;

  DeliveryReportBloc(this._deliveryReportDataSource);

  void classDelivered(Schedule schedule, bool delivered, int rating) {
    dispatch(
      ClassDeliveredEvent((b) => b
        ..schedule.replace(schedule)
        ..delivered = delivered
        ..rating = rating),
    );
  }

  void classCancelled(Schedule schedule, bool deliverd, String comment) {
    dispatch(
      ClassCancelledEvent((b) => b
        ..schedule.replace(schedule)
        ..delivered = deliverd
        ..comment = comment),
    );
  }

  @override
  Stream<DeliveryReportState> mapEventToState(
      DeliveryReportState currentState, DeliveryReportEvent event) async* {
    if (event is ClassDeliveredEvent) yield* mapEventToClassDelivered(event);
  }

  Stream<DeliveryReportState> mapEventToClassDelivered(
      ClassDeliveredEvent event) async* {
    try {
      yield DeliveryReportState.loading();
      final response = await _deliveryReportDataSource.sendDeliveryReport(
        event.schedule,
        delivered: event.delivered,
        rating: event.rating,
      );
      if (response.code == 200)
        yield DeliveryReportState.success(response);
      else
        yield DeliveryReportState.failure(response);
    } catch (_) {}
  }

  Stream<DeliveryReportState> mapEventToClassCancelled(
      ClassCancelledEvent event) async* {
    try {
      yield DeliveryReportState.loading();
      final response = await _deliveryReportDataSource.sendDeliveryReport(
        event.schedule,
        delivered: event.delivered,
        comment: event.comment,
      );
      if (response.code == 200)
        yield DeliveryReportState.success(response);
      else
        yield DeliveryReportState.failure(response);
    } catch (_) {}
  }
}
