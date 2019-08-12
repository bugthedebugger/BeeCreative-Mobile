import 'dart:async';

import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/bloc/leaderboards_bloc/leaderboards_events.dart';
import 'package:BeeCreative/src/data/models/momonation/leaderboards/leaderboards.dart';
import 'package:BeeCreative/src/data/repository/momonation_repository.dart';
import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';

class LeaderboardBloc extends Bloc {
  final MomonationRepository _repository;

  LeaderboardBloc(this._repository) {
    init();
  }

  StreamController<LeaderboardsEvent> _eventStreamController =
      StreamController<LeaderboardsEvent>.broadcast();
  Stream<LeaderboardsEvent> get eventStream => _eventStreamController.stream;
  Sink<LeaderboardsEvent> get _eventSink => _eventStreamController.sink;

  StreamController<Leaderboards> _dataStreamController =
      StreamController<Leaderboards>.broadcast();
  Stream<Leaderboards> get dataStream => _dataStreamController.stream;
  Sink<Leaderboards> get _dataSink => _dataStreamController.sink;

  void init() {
    _eventStreamController?.stream?.listen(_mapEventsToState);
  }

  void _mapEventsToState(LeaderboardsEvent event) {
    if (event is GetLeaderboards) {
      _mapGetLeaderboards(event);
    }
  }

  void _mapGetLeaderboards(GetLeaderboards event) async {
    try {
      final response = await _repository.getLeaderboards();
      addData(response);
      dispatch(
        GetLeaderboardsSuccess(
          (b) => b..leaderboards.replace(response),
        ),
      );
    } on NoConnection catch (e) {
      dispatch(LeaderboardsError((b) => b..message = e.message));
    } on MomonationException catch (e) {
      dispatch(LeaderboardsError((b) => b..message = e.message));
    } catch (_) {
      dispatch(LeaderboardsError((b) => b..message = _.toString()));
    }
  }

  void addData(Leaderboards data) {
    _dataSink.add(data);
  }

  void getLeaderboards() {
    dispatch(GetLeaderboards());
  }

  void dispatch(LeaderboardsEvent event) {
    _eventSink?.add(event);
  }

  @override
  void dispose() {
    _dataStreamController?.close();
    _eventStreamController?.close();
  }
}
