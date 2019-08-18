import 'dart:async';

import 'package:BeeCreative/src/bloc/bloc_provider.dart';
import 'package:BeeCreative/src/bloc/comment_bloc/comment_bloc_export.dart';
import 'package:BeeCreative/src/data/exceptions/custom_exceptions.dart';
import 'package:BeeCreative/src/data/models/momonation/feed/feed.dart';
import 'package:BeeCreative/src/data/repository/momonation_repository.dart';
import 'package:meta/meta.dart';

class CommentBloc extends Bloc {
  final MomonationRepository _repository;

  CommentBloc(this._repository) {
    init();
  }

  StreamController<CommentEvents> _eventStreamController =
      StreamController<CommentEvents>.broadcast();
  Stream<CommentEvents> get eventStream => _eventStreamController.stream;
  Sink<CommentEvents> get _eventSink => _eventStreamController.sink;

  void init() {
    _eventStreamController.stream.listen(_mapEventsToState);
  }

  void _mapEventsToState(CommentEvents event) {
    if (event is PostComment) {
      _mapPostComment(event);
    }
  }

  void postComment({@required String comment, @required Feed feed}) {
    dispatch(
      PostComment(
        (b) => b
          ..comment = comment
          ..feed.replace(feed),
      ),
    );
  }

  Future<void> _mapPostComment(PostComment event) async {
    try {
      await _repository.comment(
        comment: event.comment,
        feed: event.feed,
      );
      dispatch(CommentPosted());
    } on MomonationException catch (e) {
      dispatch(
        CommentError((b) => b..message = e.message),
      );
    } catch (_) {
      dispatch(
        CommentError(
          (b) => b..message = _.toString(),
        ),
      );
    }
  }

  void dispatch(CommentEvents event) {
    _eventSink.add(event);
  }

  @override
  void dispose() {
    _eventStreamController.close();
  }
}
