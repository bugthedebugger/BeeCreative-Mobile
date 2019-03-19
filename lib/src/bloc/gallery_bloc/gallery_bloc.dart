import 'dart:io';
import 'dart:async';
import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/bloc/gallery_bloc/gallery_events.dart';

class GalleryBloc extends Bloc {
  GalleryBloc() {
    initEvents();
  }

  void initEvents() {
    _galleryEventsStreamController.stream.listen(_mapEventsToState);
  }

  StreamController<GalleryEvents> _galleryEventsStreamController =
      StreamController<GalleryEvents>.broadcast();
  Stream<GalleryEvents> get galleryEventStream =>
      _galleryEventsStreamController.stream;
  Sink<GalleryEvents> get _galleryEventSink =>
      _galleryEventsStreamController.sink;

  void _mapEventsToState(GalleryEvents event) {}

  @override
  void dispose() {
    _galleryEventsStreamController.close();
  }
}
