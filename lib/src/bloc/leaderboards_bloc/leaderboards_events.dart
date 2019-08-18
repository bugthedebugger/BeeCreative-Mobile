library leaderboards_events;

import 'package:BeeCreative/src/data/models/momonation/leaderboards/leaderboards.dart';
import 'package:built_value/built_value.dart';

part 'leaderboards_events.g.dart';

abstract class LeaderboardsEvent {}

abstract class GetLeaderboards extends LeaderboardsEvent
    implements Built<GetLeaderboards, GetLeaderboardsBuilder> {
  GetLeaderboards._();

  factory GetLeaderboards([updates(GetLeaderboardsBuilder b)]) =
      _$GetLeaderboards;
}

abstract class GetLeaderboardsSuccess extends LeaderboardsEvent
    implements Built<GetLeaderboardsSuccess, GetLeaderboardsSuccessBuilder> {
  Leaderboards get leaderboards;

  GetLeaderboardsSuccess._();

  factory GetLeaderboardsSuccess([updates(GetLeaderboardsSuccessBuilder b)]) =
      _$GetLeaderboardsSuccess;
}

abstract class LeaderboardsError extends LeaderboardsEvent
    implements Built<LeaderboardsError, LeaderboardsErrorBuilder> {
  String get message;

  LeaderboardsError._();

  factory LeaderboardsError([updates(LeaderboardsErrorBuilder b)]) =
      _$LeaderboardsError;
}
