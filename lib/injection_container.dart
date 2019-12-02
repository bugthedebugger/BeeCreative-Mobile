import 'package:BeeCreative/src/bloc/appreciation_bloc/appreciation_bloc.dart';
import 'package:BeeCreative/src/bloc/attendance_bloc/attendance_bloc.dart';
import 'package:BeeCreative/src/bloc/comment_bloc/comment_bloc.dart';
import 'package:BeeCreative/src/bloc/delivery_report_bloc/delivery_report_bloc_export.dart';
import 'package:BeeCreative/src/bloc/gallery_bloc/gallery_bloc_export.dart';
import 'package:BeeCreative/src/bloc/leaderboards_bloc/leaderboards_bloc.dart';
import 'package:BeeCreative/src/bloc/momonation_bloc/momonation_bloc.dart';
import 'package:BeeCreative/src/bloc/mood_meter_bloc/mood_meter_bloc.dart';
import 'package:BeeCreative/src/bloc/narrative_bloc/narrative_bloc.dart';
import 'package:BeeCreative/src/bloc/notification_bloc/notification_bloc.dart';
import 'package:BeeCreative/src/bloc/schedule_bloc/schedule_bloc_export.dart';
import 'package:BeeCreative/src/bloc/student_randomizer_bloc/student_randomizer_bloc_export.dart';
import 'package:BeeCreative/src/bloc/user_bloc/user_bloc_export.dart';
import 'package:BeeCreative/src/data/database/gallery/gallery_db_provider.dart';
import 'package:BeeCreative/src/data/local/notification_local_call.dart';
import 'package:BeeCreative/src/data/network/attendance_data_source.dart';
import 'package:BeeCreative/src/data/network/delivery_report_source.dart';
import 'package:BeeCreative/src/data/network/momonation_feeds_data_source.dart';
import 'package:BeeCreative/src/data/network/moodmeter_data_source.dart';
import 'package:BeeCreative/src/data/network/notification_data_source.dart';
import 'package:BeeCreative/src/data/network/photo_gallery_network.dart';
import 'package:BeeCreative/src/data/network/schedule_data_source.dart';
import 'package:BeeCreative/src/data/network/user_data_source.dart';
import 'package:BeeCreative/src/data/repository/attendance_repository.dart';
import 'package:BeeCreative/src/data/repository/delivery_report_repository.dart';
import 'package:BeeCreative/src/data/repository/gallery_repository.dart';
import 'package:BeeCreative/src/data/repository/momonation_repository.dart';
import 'package:BeeCreative/src/data/repository/mood_meter_repository.dart';
import 'package:BeeCreative/src/data/repository/notification_repository.dart';
import 'package:BeeCreative/src/data/repository/schedule_respository.dart';
import 'package:BeeCreative/src/data/repository/user_repository.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kiwi/kiwi.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

Future initKiwi() async {
  Container().registerInstance(http.Client());
  Container().registerFactory((c) => UserDataSource(c.resolve()));
  Container().registerFactory((c) => UserRepository(c.resolve()));
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  Container().registerFactory((c) => sharedPreferences);
  Container().registerFactory(
    (c) => GoogleSignIn(
      hostedDomain: "karkhana.asia",
      scopes: ['email', 'profile', 'openid'],
    ),
  );
  Container().registerFactory((c) => UserBloc(
      c.resolve(), c.resolve<SharedPreferences>(), c.resolve<GoogleSignIn>()));
  Container().registerFactory((c) => ScheduleDataSource(c.resolve()));
  Container().registerFactory((c) => ScheduleRepository(c.resolve()));
  Container().registerFactory(
      (c) => ScheduleBloc(c.resolve(), c.resolve<SharedPreferences>()));
  Container().registerFactory((c) => DeliveryReportDataSource(c.resolve()));
  Container().registerFactory((c) => DeliveryReportRepository(c.resolve()));
  Container().registerFactory(
      (c) => DeliveryReportBloc(c.resolve(), c.resolve<SharedPreferences>()));
  Container().registerFactory((c) => FirebaseAnalytics());
  Container().registerFactory((c) => AttendanceDataSource(c.resolve()));
  Container().registerFactory((c) => AttendanceRepository(c.resolve()));
  Container().registerFactory(
      (c) => AttendanceBloc(c.resolve(), c.resolve<SharedPreferences>()));
  Container().registerFactory((c) => StudentRandomizerBloc());
  Container().registerFactory((c) => GalleryDBProvider());
  Container().registerFactory((c) => GalleryNetworkCall(c.resolve()));
  Container().registerFactory((c) => GalleryRepository(c.resolve()));
  Container().registerFactory((c) =>
      GalleryBloc(c.resolve(), c.resolve(), c.resolve<SharedPreferences>()));
  Container().registerFactory((c) =>
      NarrativeBloc(c.resolve(), c.resolve(), c.resolve<SharedPreferences>()));
  Container().registerFactory((c) => MomonationFeedsDataSource(c.resolve()));
  Container()
      .registerFactory((c) => MomonationRepository(c.resolve(), c.resolve()));
  Container().registerFactory((c) => MomonationBloc(c.resolve()));
  Container().registerFactory((c) => CommentBloc(c.resolve()));
  Container().registerFactory((c) => AppreciationBloc(c.resolve()));
  Container().registerFactory((c) => LeaderboardBloc(c.resolve()));
  Container().registerFactory((c) => MoodMeterDataSource(c.resolve()));
  Container().registerFactory(
      (c) => MoodMeterRepository(c.resolve(), c.resolve<SharedPreferences>()));
  Container().registerFactory((c) => MoodMeterBloc(c.resolve()));
  Container().registerFactory((c) => NotificationDataSource(c.resolve()));
  Container().registerFactory((c) => NotificationLocalCall(c.resolve<SharedPreferences>()));
  Container().registerFactory((c) =>
      NotificationRepository(c.resolve(), c.resolve<SharedPreferences>(), c.resolve()));
  Container().registerFactory((c) => NotificationBloc(c.resolve(), c.resolve<SharedPreferences>()));
}
