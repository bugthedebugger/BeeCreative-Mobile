import 'dart:async';

import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/bloc/delivery_report_bloc/delivery_report_bloc_export.dart';
import 'package:BeeCreative/src/data/models/delivery_report/delivery_response_model.dart';
import 'package:BeeCreative/src/data/models/schedules/schedule_model.dart';
import 'package:BeeCreative/src/data/repository/delivery_report_repository.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DeliveryReportBloc implements Bloc {
  DeliveryReportRepository _reportRepository;
  SharedPreferences _preferences;
  String _token;

  DeliveryReportBloc(this._reportRepository, this._preferences) {
    this._token = _preferences.getString('token');
    init();
  }

  void init() {
    _deliveryReportEventController.stream.listen(_mapEventToStates);
  }

  /// StreamController for delivery report events
  StreamController<DeliveryReportEvent> _deliveryReportEventController =
      StreamController<DeliveryReportEvent>.broadcast();
  Stream<DeliveryReportEvent> get deliveryReportEvent =>
      _deliveryReportEventController.stream;
  Sink<DeliveryReportEvent> get _deliveryReportEventIn =>
      _deliveryReportEventController.sink;

  /// StreamController for delivery report response
  StreamController<DeliveryReportResponse> _deliveryStreamController =
      StreamController<DeliveryReportResponse>.broadcast();
  Stream<DeliveryReportResponse> get deliveryReport =>
      _deliveryStreamController.stream;
  // Sink<DeliveryReportResponse> get _deliveryReportIn =>
  //     _deliveryStreamController.sink;

  void _mapEventToStates(DeliveryReportEvent event) {
    if (event is ClassDeliveredEvent) {
      _mapClassDeliveredEventToState(event);
    } else if (event is ClassCancelledEvent) {
      _mapClassCancelledEventToState(event);
    } else if (event is DeliveryReportSubmitted) {
    } else if (event is DeliveryReportError) {
    } else if (event is SubmittingReport) {}
  }

  void _mapClassCancelledEventToState(ClassCancelledEvent event) async {
    try {
      _loading();
      final response = await _reportRepository.sendDeliveryReport(
        token: event.token,
        schedule: event.schedule,
        delivered: event.delivered,
        comment: event.comment,
      );
      if (response.code == 200)
        dispatch(DeliveryReportSubmitted());
      else
        _dispatchError(response.error);
    } catch (error) {
      _dispatchError(error.message);
    }
  }

  void _mapClassDeliveredEventToState(ClassDeliveredEvent event) async {
    try {
      _loading();
      final response = await _reportRepository.sendDeliveryReport(
        token: event.token,
        schedule: event.schedule,
        delivered: event.delivered,
        rating: event.rating,
      );
      if (response.code == 200)
        dispatch(DeliveryReportSubmitted());
      else
        _dispatchError(response.error);
    } catch (error) {
      _dispatchError(error.message);
    }
  }

  void _loading() {
    dispatch(SubmittingReport());
  }

  void _dispatchError(String error) {
    dispatch(DeliveryReportError((b) => b..message = error));
  }

  void initiateDeliveryReport({
    @required Schedule schedule,
    @required bool delivered,
    int rating,
    String comment,
  }) {
    if (delivered) {
      dispatch(
        ClassDeliveredEvent((b) => b
          ..token = _token
          ..schedule.replace(schedule)
          ..delivered = delivered
          ..rating = rating),
      );
    } else {
      dispatch(
        ClassCancelledEvent((b) => b
          ..token = _token
          ..schedule.replace(schedule)
          ..delivered = delivered
          ..comment = comment),
      );
    }
  }

  void dispatch(DeliveryReportEvent event) {
    _deliveryReportEventIn.add(event);
  }

  @override
  void dispose() {
    _deliveryStreamController.close();
    _deliveryReportEventController.close();
  }
}
