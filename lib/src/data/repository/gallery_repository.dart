import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';
import 'package:BeeCreative/src/data/network/photo_gallery_network.dart';
import 'package:BeeCreative/src/data/repository/connection_check.dart';
import 'dart:async';
import 'package:meta/meta.dart';

class GalleryRepository {
  final GalleryNetworkCall _galleryNetworkCall;

  GalleryRepository(this._galleryNetworkCall);

  Future<bool> syncGalleryToServer({
    @required List<Map> socialMedia,
    @required String token,
  }) async {
    bool connection = await ConnectionCheck().checkConnection();
    if (connection == false) throw NoConnection();

    final response = await _galleryNetworkCall.syncGalleryToServer(
        socialMedia: socialMedia, token: 'Bearer ' + token);

    return response;
  }

  Future<String> getFolderId({
    @required String date,
    @required String name,
    @required String token,
  }) async {
    bool connection = await ConnectionCheck().checkConnection();
    if (connection == false) throw NoConnection();

    final response = await _galleryNetworkCall.getFolderId(
        date: date, name: name, token: 'Bearer ' + token);
    return response.folder.folderId;
  }
}
