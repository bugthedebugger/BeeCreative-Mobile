library comment_events;

import 'package:BeeCreative/src/data/models/momonation/feed/feed.dart';
import 'package:built_value/built_value.dart';

part 'comment_events.g.dart';

abstract class CommentEvents {}

abstract class PostComment extends CommentEvents
    implements Built<PostComment, PostCommentBuilder> {
  String get comment;
  Feed get feed;

  PostComment._();

  factory PostComment([updates(PostCommentBuilder b)]) = _$PostComment;
}

abstract class CommentPosted extends CommentEvents
    implements Built<CommentPosted, CommentPostedBuilder> {
  CommentPosted._();

  factory CommentPosted([updates(CommentPostedBuilder b)]) = _$CommentPosted;
}

abstract class CommentError extends CommentEvents
    implements Built<CommentError, CommentErrorBuilder> {
  String get message;

  CommentError._();

  factory CommentError([updates(CommentErrorBuilder b)]) = _$CommentError;
}
