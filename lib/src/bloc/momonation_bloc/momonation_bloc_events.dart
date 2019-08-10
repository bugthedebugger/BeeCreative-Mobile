library momonation_bloc_events;

import 'package:BeeCreative/src/data/models/momonation/momonation_models.dart';
import 'package:built_value/built_value.dart';

part 'momonation_bloc_events.g.dart';

abstract class MomonationEvents {}

abstract class GetFeed extends MomonationEvents
    implements Built<GetFeed, GetFeedBuilder> {
  GetFeed._();

  factory GetFeed([updates(GetFeedBuilder b)]) = _$GetFeed;
}

abstract class FeedLoadSuccess extends MomonationEvents
    implements Built<FeedLoadSuccess, FeedLoadSuccessBuilder> {
  MomoFeed get feed;

  FeedLoadSuccess._();

  factory FeedLoadSuccess([updates(FeedLoadSuccessBuilder b)]) =
      _$FeedLoadSuccess;
}

abstract class MomonationSuccess extends MomonationEvents
    implements Built<MomonationSuccess, MomonationSuccessBuilder> {
  String get message;

  MomonationSuccess._();

  factory MomonationSuccess([updates(MomonationSuccessBuilder b)]) =
      _$MomonationSuccess;
}

abstract class MomonationError extends MomonationEvents
    implements Built<MomonationError, MomonationErrorBuilder> {
  String get message;

  MomonationError._();

  factory MomonationError([updates(MomonationErrorBuilder b)]) =
      _$MomonationError;
}

abstract class NoInternetEvent extends MomonationEvents
    implements Built<NoInternetEvent, NoInternetEventBuilder> {
  String get message;

  NoInternetEvent._();

  factory NoInternetEvent([updates(NoInternetEventBuilder b)]) =
      _$NoInternetEvent;
}

abstract class Retry extends MomonationEvents
    implements Built<Retry, RetryBuilder> {
  // fields go here

  Retry._();

  factory Retry([updates(RetryBuilder b)]) = _$Retry;
}
