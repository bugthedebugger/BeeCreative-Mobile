import 'dart:async';

import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/assets_repo/moodmeter_emojis.dart';
import 'package:BeeCreative/src/bloc/mood_meter_bloc/mood_meter_bloc_export.dart';
import 'package:BeeCreative/src/widgets/avatar_circle/avatar_circle.dart';
import 'package:BeeCreative/src/widgets/emotion_widget/emotion_widget.dart';
import 'package:BeeCreative/src/widgets/loading_card/loading_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class MoodMeter extends StatefulWidget {
  @override
  _MoodMeterState createState() => _MoodMeterState();
}

class _MoodMeterState extends State<MoodMeter> {
  MoodMeterEmotions selectedEmotion;
  SharedPreferences _preferences =
      kiwi.Container().resolve<SharedPreferences>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  MoodMeterBloc _bloc = kiwi.Container().resolve<MoodMeterBloc>();
  StreamSubscription _sub;

  @override
  void initState() {
    super.initState();
    _bloc?.init();
    _sub = _bloc.eventStream.listen((onData) {
      if (onData is SaveMood) {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              child: LoadingCard(),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  ScreenUtil().setWidth(15),
                ),
              ),
            );
          },
        );
      } else if (onData is MoodMeterSuccess) {
        Navigator.of(context).pop();
        scaffoldKey.currentState.showSnackBar(SnackBar(
          content: Text('Thank you! This means a lot to Willi the Bot <3'),
          duration: Duration(seconds: 10),
          action: SnackBarAction(
            label: 'Yay!',
            onPressed: () {},
          ),
        ));
      } else if (onData is MoodMeterError) {
        Navigator.of(context).pop();
        scaffoldKey.currentState.showSnackBar(SnackBar(
          content: Text(onData.message),
          action: SnackBarAction(
            label: 'ok',
            onPressed: () {},
          ),
        ));
      }
    });
  }

  @override
  void dispose() {
    _sub?.cancel();
    _bloc?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(AppColors.yellow),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Mood meter',
          style: TextStyle(
            color: Colors.white,
            fontSize: ScreenUtil().setSp(15),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: ScreenUtil().setHeight(100),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: ScreenUtil().setHeight(15),
                horizontal: ScreenUtil().setWidth(15),
              ),
              width: ScreenUtil().setWidth(335),
              height: ScreenUtil().setHeight(264),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  ScreenUtil().setWidth(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    spreadRadius: 6.0,
                    offset: Offset(0.0, 3.0),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'How do you feel right now?',
                    style: AppFontStyles(context).getTextStyle(
                      color: Color(0xffABABAB),
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(20)),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(48),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        EmotionWidget(
                          emoji: MoodMeterEmojis
                              .emojiMap[MoodMeterEmojis.emojiList[0]],
                          onTap: (data) => selectEmotion(data),
                          selectedEmotion: selectedEmotion,
                        ),
                        EmotionWidget(
                          emoji: MoodMeterEmojis
                              .emojiMap[MoodMeterEmojis.emojiList[1]],
                          onTap: (data) => selectEmotion(data),
                          selectedEmotion: selectedEmotion,
                        ),
                        EmotionWidget(
                          emoji: MoodMeterEmojis
                              .emojiMap[MoodMeterEmojis.emojiList[2]],
                          onTap: (data) => selectEmotion(data),
                          selectedEmotion: selectedEmotion,
                        ),
                        EmotionWidget(
                          emoji: MoodMeterEmojis
                              .emojiMap[MoodMeterEmojis.emojiList[3]],
                          onTap: (data) => selectEmotion(data),
                          selectedEmotion: selectedEmotion,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(14)),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(75),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        EmotionWidget(
                          emoji: MoodMeterEmojis
                              .emojiMap[MoodMeterEmojis.emojiList[4]],
                          onTap: (data) => selectEmotion(data),
                          selectedEmotion: selectedEmotion,
                        ),
                        EmotionWidget(
                          emoji: MoodMeterEmojis
                              .emojiMap[MoodMeterEmojis.emojiList[5]],
                          onTap: (data) => selectEmotion(data),
                          selectedEmotion: selectedEmotion,
                        ),
                        EmotionWidget(
                          emoji: MoodMeterEmojis
                              .emojiMap[MoodMeterEmojis.emojiList[6]],
                          onTap: (data) => selectEmotion(data),
                          selectedEmotion: selectedEmotion,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(17)),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: ScreenUtil().setWidth(107),
                      height: ScreenUtil().setHeight(36),
                      child: FlatButton(
                        onPressed: () {
                          if (selectedEmotion == null) {
                            scaffoldKey.currentState.showSnackBar(
                              SnackBar(
                                content: Text(
                                  'I ain\'t smart enough to tell what your mood is :(',
                                ),
                                action: SnackBarAction(
                                  label: 'Ok',
                                  onPressed: () {},
                                ),
                                duration: Duration(seconds: 10),
                              ),
                            );
                          } else {
                            _bloc.saveMood(
                              mood: MoodMeterEmojis.emojiList.indexOf(
                                    selectedEmotion,
                                  ) +
                                  1,
                            );
                          }
                        },
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(26),
                          vertical: ScreenUtil().setHeight(9),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            ScreenUtil().setWidth(30),
                          ),
                        ),
                        color: Color(AppColors.deliveryReportSaveButton),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.solidSave,
                              color: Colors.white,
                              size: ScreenUtil().setSp(13),
                            ),
                            Text(
                              'Save',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(60),
            child: Hero(
              transitionOnUserGestures: true,
              tag: 'avatar',
              child: AvatarCircle(
                AppPhotos.staticAvatar,
                _preferences.get('avatar'),
                showCloud: false,
                ringWidth: 5,
              ),
            ),
          ),
          Positioned(
            left: ScreenUtil().setWidth(20),
            bottom: ScreenUtil().setHeight(12),
            child: Image.asset(
              AppPhotos.moodmeter,
              width: ScreenUtil().setWidth(120),
              height: ScreenUtil().setHeight(270),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        backgroundColor: Colors.white,
        child: Icon(
          FontAwesomeIcons.times,
          color: Color(AppColors.yellow),
          size: ScreenUtil().setSp(26),
        ),
      ),
    );
  }

  void selectEmotion(MoodMeterEmotions emotion) {
    selectedEmotion = emotion;
    setState(() {});
  }
}
