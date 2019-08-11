import 'dart:async';

import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/bloc/comment_bloc/comment_bloc.dart';
import 'package:BeeCreative/src/bloc/comment_bloc/comment_events.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:BeeCreative/src/data/models/momonation/feed/feed.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:BeeCreative/src/widgets/comment_card/comment_card.dart';
import 'package:BeeCreative/src/widgets/error_card/error_card.dart';
import 'package:BeeCreative/src/widgets/loading_card/loading_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class MomonationCommentsDialog extends StatefulWidget {
  final ColorModel colorModel;

  const MomonationCommentsDialog({
    Key key,
    @required this.colorModel,
  }) : super(key: key);

  @override
  _MomonationCommentsDialogState createState() =>
      _MomonationCommentsDialogState();
}

class _MomonationCommentsDialogState extends State<MomonationCommentsDialog> {
  Feed _feed;
  CommentBloc _bloc = kiwi.Container().resolve<CommentBloc>();
  StreamSubscription _sub;
  String comment;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _sub = _bloc.eventStream.listen((onData) {
      if (onData is PostComment) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return Dialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  ScreenUtil().setWidth(15),
                ),
              ),
              child: LoadingCard(),
            );
          },
        );
      } else if (onData is CommentPosted) {
        Navigator.of(context).pop();
        Navigator.of(context).pop(true);
      } else if (onData is CommentError) {
        Navigator.of(context).pop();
        showDialog(
          context: context,
          barrierDismissible: true,
          builder: (context) => Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                ScreenUtil().setWidth(15),
              ),
            ),
            backgroundColor: Colors.white,
            child: ErrorCard(
              message: onData.message,
            ),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _bloc.dispose();
    _sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    _feed = Provider.of<Feed>(context);

    return Dialog(
      backgroundColor: widget.colorModel.light,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          ScreenUtil().setWidth(15),
        ),
      ),
      child: Container(
        height: ScreenUtil().setHeight(530),
        width: ScreenUtil().setWidth(336),
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: ScreenUtil().setHeight(103),
                left: ScreenUtil().setWidth(42),
                child: Icon(
                  FontAwesomeIcons.seedling,
                  color: widget.colorModel.dark,
                  size: ScreenUtil().setSp(65),
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: ImageIcon(
                  AssetImage(AppPhotos.bar),
                  color: widget.colorModel.darker,
                  size: ScreenUtil().setSp(162),
                ),
              ),
              Positioned(
                right: ScreenUtil().setWidth(28),
                bottom: ScreenUtil().setHeight(60),
                child: ImageIcon(
                  AssetImage(AppPhotos.outlineDumpling),
                  color: widget.colorModel.dark,
                  size: ScreenUtil().setSp(64),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(12),
                  right: ScreenUtil().setWidth(12),
                  bottom: ScreenUtil().setHeight(12),
                  top: ScreenUtil().setHeight(12),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.heart,
                          color: Colors.white,
                          size: ScreenUtil().setSp(18),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(5),
                        ),
                        Text(
                          '${_feed.likes}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(15),
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        IconButton(
                          alignment: Alignment.centerRight,
                          icon: Icon(
                            FontAwesomeIcons.times,
                            size: ScreenUtil().setSp(18),
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(29),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        AvatarCircle(
                          AppPhotos.staticAvatar,
                          _feed.sender.avatar,
                          showCloud: false,
                          radius: 80,
                          ringColor: widget.colorModel.darker,
                        ),
                        Container(
                          width: ScreenUtil().setWidth(40),
                          height: ScreenUtil().setHeight(5),
                          color: widget.colorModel.darker,
                        ),
                        Container(
                          width: ScreenUtil().setWidth(36),
                          height: ScreenUtil().setHeight(36),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: widget.colorModel.darker,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            '${_feed.amount}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(20),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          width: ScreenUtil().setWidth(40),
                          height: ScreenUtil().setHeight(5),
                          color: widget.colorModel.darker,
                        ),
                        AvatarCircle(
                          AppPhotos.staticAvatar,
                          _feed.receiver.avatar,
                          showCloud: false,
                          radius: 80,
                          ringColor: widget.colorModel.darker,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    Container(
                      height: ScreenUtil().setHeight(290),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: _feed.comments.length + 1,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          if (index == 0)
                            return CommentCard(
                              colorModel: widget.colorModel,
                              avatar: _feed.sender.avatar,
                              comment: _feed.description,
                            );

                          return CommentCard(
                            colorModel: widget.colorModel,
                            avatar: _feed.comments[index - 1].user.avatar,
                            comment: _feed.comments[index - 1].comment,
                          );
                        },
                      ),
                    ),
                    Form(
                      key: formKey,
                      child: Container(
                        width: ScreenUtil().setWidth(287),
                        height: ScreenUtil().setHeight(42),
                        margin: EdgeInsets.only(
                          top: ScreenUtil().setHeight(15),
                        ),
                        child: Theme(
                          data: ThemeData(
                            primaryColor: widget.colorModel.darker,
                            hintColor: widget.colorModel.dark,
                          ),
                          child: TextFormField(
                            validator: (value) {
                              if (value.length < 2)
                                return 'Comment has to be min two characters.';
                              else {
                                comment = value;
                              }
                            },
                            textAlign: TextAlign.start,
                            cursorColor: widget.colorModel.darker,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.paperPlane,
                                  color: widget.colorModel.darker,
                                  size: ScreenUtil().setSp(15),
                                ),
                                onPressed: () {
                                  if (formKey.currentState.validate()) {
                                    _bloc.postComment(
                                      comment: comment,
                                      feed: _feed,
                                    );
                                  }
                                },
                              ),
                              contentPadding: EdgeInsets.only(
                                top: ScreenUtil().setHeight(20),
                                left: ScreenUtil().setWidth(10),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: widget.colorModel.darker,
                                  width: ScreenUtil().setWidth(3),
                                ),
                                borderRadius: BorderRadius.circular(
                                  ScreenUtil().setWidth(30),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: widget.colorModel.darker,
                                  width: ScreenUtil().setWidth(3),
                                ),
                                borderRadius: BorderRadius.circular(
                                  ScreenUtil().setWidth(30),
                                ),
                              ),
                              fillColor: Colors.white,
                              focusColor: Colors.white,
                              filled: true,
                              hintText: 'Write a comment ...',
                              hintStyle: TextStyle(
                                fontSize: ScreenUtil().setSp(12),
                                color: Color(AppColors.grey),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
