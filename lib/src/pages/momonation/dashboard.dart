import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/bloc/momonation_bloc/momonation_bloc_export.dart';
import 'package:BeeCreative/src/pages/momonation/dashboard_part.dart';
import 'package:BeeCreative/src/widgets/momonation_scaffold/momonation_scaffold.dart';
import 'package:BeeCreative/src/widgets/no_internet_widget/no_internet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:provider/provider.dart';

class MomonationDashboard extends StatefulWidget {
  @override
  _MomonationDashboardState createState() => _MomonationDashboardState();
}

class _MomonationDashboardState extends State<MomonationDashboard> {
  final MomonationBloc _bloc = kiwi.Container().resolve<MomonationBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.getFeed();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: ScreenSize.screenWidth,
      height: ScreenSize.screenHeight,
      allowFontScaling: true,
    )..init(context);

    return Provider<MomonationBloc>.value(
      value: _bloc,
      child: MomonationScaffold(
        body: StreamBuilder(
          stream: _bloc.eventStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data is GetFeed)
                return Center(
                  child: CircularProgressIndicator(),
                );
              else if (snapshot.data is MomonationError ||
                  snapshot.data is NoInternetEvent)
                return NoInternetWidget(
                  message: snapshot.data.message,
                  onPressed: () {
                    _bloc.getFeed();
                  },
                );
              else
                return MultiProvider(
                  providers: [
                    Provider<MomonationEvents>.value(value: snapshot.data),
                  ],
                  child: RefreshIndicator(
                    onRefresh: () {
                      _bloc.getFeed();
                      return Future.delayed(
                        Duration(milliseconds: 2),
                      );
                    },
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics(),
                      ),
                      child: DashboardPart(),
                    ),
                  ),
                );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.APPRECIATE_PAGE).then(
            (onValue) {
              if (onValue) _bloc.getFeed();
            },
          );
        },
      ),
    );
  }
}
