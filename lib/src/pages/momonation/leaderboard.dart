import 'dart:async';

import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/assets_repo/color_selector.dart';
import 'package:BeeCreative/src/bloc/leaderboards_bloc/leaderboards_bloc_export.dart';
import 'package:BeeCreative/src/bloc/leaderboards_bloc/leaderboards_events.dart';
import 'package:BeeCreative/src/data/models/colors/colors_model.dart';
import 'package:BeeCreative/src/data/models/momonation/leaderboards/leaderboards.dart';
import 'package:BeeCreative/src/data/models/momonation/momonation_models.dart';
import 'package:BeeCreative/src/widgets/leaderboard_widget/leaderboard_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:provider/provider.dart';

class LeaderBoardsPage extends StatefulWidget {
  @override
  _LeaderBoardsPageState createState() => _LeaderBoardsPageState();
}

class _LeaderBoardsPageState extends State<LeaderBoardsPage> {
  final LeaderboardBloc _bloc = kiwi.Container().resolve<LeaderboardBloc>();
  StreamSubscription _sub;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  Completer<void> _completer;

  @override
  void initState() {
    _bloc?.init();
    _bloc.getLeaderboards();
    _sub = _bloc.eventStream.listen((event) {
      if (event is LeaderboardsError) {
        _completer?.complete();
        _completer = Completer();
        scaffoldKey.currentState.showSnackBar(
          SnackBar(
            content: Text(event.message),
            duration: Duration(minutes: 1),
            action: SnackBarAction(
              label: 'Ok',
              onPressed: () {
                _bloc.getLeaderboards();
              },
            ),
          ),
        );
      } else if (event is GetLeaderboardsSuccess) {
        _completer?.complete();
        _completer = Completer();
      } else if (event is GetLeaderboards) {
        // _completer = Completer();
      }
    });
    super.initState();
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            size: ScreenUtil().setHeight(15),
            color: Color(AppColors.meltingCardColor),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Momonation',
              style: TextStyle(
                color: Color(AppColors.meltingCardColor),
                fontSize: ScreenUtil().setSp(18),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(12),
        ),
        child: StreamBuilder<Leaderboards>(
          stream: _bloc.dataStream,
          builder: (context, snapshot) {
            if (snapshot.hasData)
              return RefreshIndicator(
                onRefresh: () {
                  _bloc.getLeaderboards();
                  return _completer.future;
                },
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: snapshot.data.leaderboards.length,
                  itemBuilder: (context, index) {
                    ColorModel colorModel = ColorSelector.getColor(index);
                    return ListTile(
                      title: Text(
                        'Leaderboard - ${snapshot.data.leaderboards[index].date}',
                        style: TextStyle(
                          color: Color(AppColors.grey),
                          fontSize: ScreenUtil().setSp(15),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      enabled: true,
                      subtitle: MultiProvider(
                        providers: [
                          Provider<Leaderboard>.value(
                            value: snapshot.data.leaderboards[index],
                          ),
                          Provider<ColorModel>.value(
                            value: colorModel,
                          ),
                        ],
                        child: LeaderboardWidget(),
                      ),
                    );
                  },
                ),
              );
            else
              return Center(
                child: CircularProgressIndicator(),
              );
          },
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
