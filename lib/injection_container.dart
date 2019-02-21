import 'package:BeeCreative/src/bloc/schedule_bloc/schedule_bloc_export.dart';
import 'package:BeeCreative/src/bloc/user_bloc/user_bloc_export.dart';
import 'package:BeeCreative/src/data/network/schedule_data_source.dart';
import 'package:BeeCreative/src/data/network/user_data_source.dart';
import 'package:BeeCreative/src/data/repository/schedule_respository.dart';
import 'package:BeeCreative/src/data/repository/user_repository.dart';
import 'package:kiwi/kiwi.dart';
import 'package:http/http.dart' as http;

void initKiwi() {
  Container().registerFactory((c) => http.Client());
  Container().registerFactory((c) => UserDataSource(c.resolve()));
  Container().registerFactory((c) => UserRepository(c.resolve()));
  Container().registerFactory((c) => UserBloc(c.resolve()));
  Container().registerFactory((c) => ScheduleDataSource(c.resolve()));
  Container().registerFactory((c) => ScheduleRepository(c.resolve()));
  Container().registerFactory((c) => ScheduleBloc(c.resolve()));
}
