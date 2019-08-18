import 'dart:async';

import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/bloc/momonation_bloc/momonation_bloc_events.dart';
import 'package:BeeCreative/src/data/models/momonation/momo_feed/momo_feed.dart';
import 'package:BeeCreative/src/data/repository/momonation_repository.dart';
import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';

class MomonationBloc extends Bloc {
  final MomonationRepository _repository;

  MomonationBloc(this._repository) {
    init();
  }

  StreamController<MomonationEvents> _eventStreamController =
      StreamController<MomonationEvents>.broadcast();
  Stream get eventStream => _eventStreamController.stream;
  Sink get _eventSink => _eventStreamController.sink;

  StreamController<MomoFeed> _feedStreamController =
      StreamController<MomoFeed>.broadcast();
  Stream<MomoFeed> get feedStream => _feedStreamController.stream;
  Sink<MomoFeed> get _feedSink => _feedStreamController.sink;

  void init() {
    _eventStreamController.stream.listen(mapEventsToState);
  }

  void mapEventsToState(MomonationEvents event) {
    if (event is GetFeed) {
      _mapGetFeed(event);
    }
  }

  void getFeed() {
    dispatch(GetFeed());
  }

  Future<void> _mapGetFeed(MomonationEvents event) async {
    try {
      final response = await _repository.getMomonationFeed();
      dispatch(FeedLoadSuccess((b) => b..feed.replace(response)));
      addMomoFeed(response);
    } on MomonationException catch (e) {
      dispatch(
        MomonationError((b) => b..message = e.message),
      );
    } on NoConnection catch (_) {
      dispatch(NoInternetEvent((b) => b..message = _.message));
    } catch (_) {
      dispatch(MomonationError((b) => b..message = _.toString()));
    }
  }

  void dispatch(MomonationEvents event) {
    _eventSink.add(event);
  }

  void addMomoFeed(MomoFeed feed) {
    _feedSink.add(feed);
  }

  @override
  void dispose() {
    _eventStreamController.close();
    _feedStreamController.close();
  }
}
