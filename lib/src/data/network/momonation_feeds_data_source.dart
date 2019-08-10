import 'dart:convert';

import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';
import 'package:BeeCreative/src/data/models/momonation/momonation_models.dart';
import 'package:http/http.dart' as http;
import 'api_call.dart';
import 'dart:async';
import 'package:meta/meta.dart';

class MomonationFeedsDataSource {
  final http.Client client;

  MomonationFeedsDataSource(this.client);

  Future<MomoFeed> getMomonationFeed({@required String token}) async {
    final url = MomonationURL.feed;
    final encodedUrl = Uri.encodeFull(url);
    final response = await client.get(encodedUrl, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });

    if (response.statusCode == 200)
      return MomoFeed.fromJson(response.body);
    else
      throw Exception(response.body);
  }

  Future<String> transfer({
    @required String token,
    @required int receiver,
    @required int amount,
    @required String title,
    @required String description,
  }) async {
    final url = MomonationURL.transfer;
    final encodedUrl = Uri.encodeFull(url);
    final response = await client.post(
      encodedUrl,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'receiver': receiver,
        'amount': amount,
        'title': title,
        'description': description,
      }),
    );

    if (response.statusCode == 200)
      return response.body;
    else
      throw MomonationException(response.body);
  }

  Future<String> comment({
    @required String token,
    @required int feed,
    @required String comment,
  }) async {
    final url = MomonationURL.comment;
    final encodedUrl = Uri.encodeFull(url);
    final response = await client.put(
      encodedUrl,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'comment': comment,
        'feed_id': feed,
      }),
    );

    if (response.statusCode == 200)
      return response.body;
    else
      throw MomonationException(response.body);
  }

  Future<UserList> getUsers({@required String token}) async {
    final url = MomonationURL.users;
    final encodedUrl = Uri.encodeFull(url);
    final response = await client.get(
      encodedUrl,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return UserList.fromJson(response.body);
    } else {
      throw MomonationException(response.body);
    }
  }
}
