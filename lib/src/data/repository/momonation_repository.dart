import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';
import 'package:BeeCreative/src/data/models/momonation/momonation_models.dart';
import 'package:BeeCreative/src/data/network/momonation_feeds_data_source.dart';
import 'package:BeeCreative/src/data/repository/connection_check.dart';
import 'package:meta/meta.dart';
import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class MomonationRepository {
  final MomonationFeedsDataSource dataSource;
  final SharedPreferences preferences;

  MomonationRepository(this.dataSource, this.preferences);

  Future<MomoFeed> getMomonationFeed() async {
    bool connection = await ConnectionCheck().checkConnection();
    if (connection == false) throw NoConnection();

    return dataSource.getMomonationFeed(
      token: preferences.get('token'),
    );
  }

  Future<String> transfer({
    @required int amount,
    @required String description,
    @required String title,
    @required User user,
  }) async {
    bool connection = await ConnectionCheck().checkConnection();
    if (connection == false) throw NoConnection();

    return dataSource.transfer(
      token: preferences.get('token'),
      amount: amount,
      receiver: user.id,
      title: title,
      description: description,
    );
  }

  Future<String> comment({
    @required String comment,
    @required Feed feed,
  }) async {
    bool connection = await ConnectionCheck().checkConnection();
    if (connection == false) throw NoConnection();

    return dataSource.comment(
      token: preferences.get('token'),
      comment: comment,
      feed: feed.id,
    );
  }

  Future<UserList> getUsers() async {
    bool connection = await ConnectionCheck().checkConnection();
    if (connection == false) throw NoConnection();

    return dataSource.getUsers(
      token: preferences.get('token'),
    );
  }

  Future<Leaderboards> getLeaderboards() async {
    bool connection = await ConnectionCheck().checkConnection();
    if (connection == false) throw NoConnection();

    return dataSource.getLeaderboards(
      token: preferences.get('token'),
    );
  }
}
