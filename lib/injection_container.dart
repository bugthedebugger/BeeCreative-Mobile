import 'package:BeeCreative/src/bloc/delivery_report_bloc/delivery_report_bloc_export.dart';
import 'package:BeeCreative/src/bloc/schedule_bloc/schedule_bloc_export.dart';
import 'package:BeeCreative/src/bloc/user_bloc/user_bloc_export.dart';
import 'package:BeeCreative/src/data/network/delivery_report_source.dart';
import 'package:BeeCreative/src/data/network/schedule_data_source.dart';
import 'package:BeeCreative/src/data/network/user_data_source.dart';
import 'package:BeeCreative/src/data/repository/delivery_report_repository.dart';
import 'package:BeeCreative/src/data/repository/schedule_respository.dart';
import 'package:BeeCreative/src/data/repository/user_repository.dart';
import 'package:kiwi/kiwi.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future initKiwi() async {
  Container().registerInstance(http.Client());
  Container().registerFactory((c) => UserDataSource(c.resolve()));
  Container().registerFactory((c) => UserRepository(c.resolve()));
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  Container().registerFactory((c) => sharedPreferences);
  Container().registerFactory(
      (c) => UserBloc(c.resolve(), c.resolve<SharedPreferences>()));
  Container().registerFactory((c) => ScheduleDataSource(c.resolve()));
  Container().registerFactory((c) => ScheduleRepository(c.resolve()));
  Container().registerFactory((c) => ScheduleBloc(c.resolve()));
  Container().registerFactory((c) => DeliveryReportDataSource(c.resolve()));
  Container().registerFactory((c) => DeliveryReportRepository(c.resolve()));
  Container().registerFactory(
      (c) => DeliveryReportBloc(c.resolve(), c.resolve<SharedPreferences>()));
}
