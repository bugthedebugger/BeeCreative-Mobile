import 'dart:async';
import 'dart:convert';
import 'package:BeeCreative/src/data/models/google_drive_folder_model/google_drive_folder_model.dart';
import 'package:BeeCreative/src/data/network/api_call.dart';
import 'package:http/http.dart' as http;
import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';
import 'package:meta/meta.dart';

class GalleryNetworkCall {
  final http.Client client;

  GalleryNetworkCall(this.client);

  Future<bool> syncGalleryToServer(
      {@required List<Map> socialMedia, @required String token}) async {
    final url = Uri.encodeFull(ApiURL.socialUploads);
    final response = await client.post(
      url,
      headers: {
        'Authorization': token,
        'Content-Type': 'application/json',
      },
      body: json.encode(socialMedia),
    );

    if (response.statusCode == 200) {
      return true;
    } else if (response.statusCode == 401) {
      throw Unauthenticated();
    } else if (response.statusCode == 400) {
      throw SocialMediaUploadException(json.decode(response.body)['data']);
    } else {
      return false;
    }
  }

  Future<GoogleDrive> getFolderId(
      {@required String date,
      @required String name,
      @required String token}) async {
    var parms = {'date': date, 'name': name};
    Uri url = Uri.parse(ApiURL.narrativeFolder);
    url = url.replace(queryParameters: parms);
    final response = await client.get(
      url,
      headers: {
        'Authorization': token,
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200)
      return GoogleDrive.fromJson(response.body);
    else if (response.statusCode == 401)
      throw Unauthenticated();
    else
      throw ServerFolderIDException(json.decode(response.body)['data']);
  }
}
