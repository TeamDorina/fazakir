import 'package:dio/dio.dart';
import 'package:fazakir/bloc/azkar_cubit/azkar_cubit.dart';
import 'package:fazakir/bloc/praise_cubit/praise_cubit.dart';
import 'package:fazakir/bloc/prayer_cubit/prayer_cubit.dart';
import 'package:fazakir/bloc/zekr_cubit/zekr_cubit.dart';
import 'package:fazakir/core/constant/prayer_time_constant.dart';
import 'package:fazakir/core/date/date_formatter.dart';
import 'package:fazakir/data_source/local/hive_helper.dart';
import 'package:fazakir/data_source/remote/dio_helper.dart';
import 'package:fazakir/repository/azkar_repository/azkar_repository.dart';
import 'package:fazakir/repository/praise_repository/praise_repository.dart';
import 'package:fazakir/repository/prayer_time_repository/prayer_time_repository.dart';
import 'package:fazakir/repository/prayer_time_repository/save_prayer_time.dart';
import 'package:get_it/get_it.dart';

import 'data_source/local/json_helper.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  //! Features - Number Trivia
  // Bloc
  getIt.registerFactory(() => AzkarCubit(azkarRepositiry: getIt()));
  getIt.registerFactory(() => PraiseCubit(praiseRepositiry: getIt()));
  getIt.registerFactory(() => ZekrCubit());
  getIt.registerFactory(() => PrayerCubit(pryaerTimeRepositiory: getIt(), hiveHelper: getIt()));

  // Use cases

  // Repository
  getIt.registerLazySingleton(() => AzkarRepositiry(jsonHelper: getIt()));
  getIt.registerLazySingleton(() => PraiseRepositiry(jsonHelper: getIt()));
  getIt.registerLazySingleton(
    () => PryaerTimeRepositiory(
      dioHelper: getIt(),
      savePrayerTimes: getIt(),
      formatter: getIt(),
    ),
  );
  getIt.registerLazySingleton(() => SavePrayerTimes(hiveHelper: getIt()));

  // Data sources
  getIt.registerLazySingleton(() => JsonHelper());
  getIt.registerLazySingleton(() => HiveHelper());

  //! Core
  getIt.registerLazySingleton(() => DateFormatter());

  //! External

  getIt.registerLazySingleton(() => DioHelper(dio: getIt()));
  getIt.registerLazySingleton(
    () => Dio(
      BaseOptions(
        baseUrl: PrayerTimeConstant.baseUrl,
        receiveDataWhenStatusError: true,
      ),
    ),
  );
}
