import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vlearn_test/core/data/data_source/base_remote_datasource.dart';
import 'package:vlearn_test/data/data_source/local_data_source/home_locale_data_source.dart';
import 'package:vlearn_test/data/data_source/remote_data_source/home_remote_data_source.dart';
import 'package:vlearn_test/data/repository/home_repo.dart';
import 'package:vlearn_test/domain/usecases/home_usecases/get_courses_usecase.dart';
import 'package:vlearn_test/domain/usecases/home_usecases/get_home_usecase.dart';

import 'Network/network_info.dart';
import 'constants/constants.dart';
import 'data/data_source/base_local_data_source.dart';

final sl = GetIt.instance;

///
/// The [init] function is responsible for adding the instances to the graph
///
Future<void> init() async {
  //! External
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  /// Adding the [SharedPreferences] instance to the graph to be later used by the local data sources
  final sharedPreferences = await SharedPreferences.getInstance();
  final rxPrefs = SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => rxPrefs);

  /// Adding the [Dio] instance to the graph to be later used by the local data sources
  sl.registerLazySingleton(
    () {
      final dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 20),
          baseUrl: Endpoints.BASE_URL,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          responseType: ResponseType.plain,
        ),
      );
      dio.interceptors.add(PrettyDioLogger(
          request: true,
          requestBody: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true));
      return dio;
    },
  );

  /// Adding the [DataConnectionChecker] instance to the graph to be later used by the [NetworkInfoImpl]
  sl.registerLazySingleton(() => InternetConnectionChecker());

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //! Core
  ///Creating [NetworkInfoImpl] class
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // Local Data sources
  /// Instantiating the [BaseLocalDataSourceImpl]
  sl.registerLazySingleton<BaseLocalDataSource>(
      () => BaseLocalDataSourceImpl(sharedPreferences: sl()));

  sl.registerLazySingleton<HomeLocalDataSource>(() => HomeLocalDataSourceImp(
        sharedPreferences: sl(),
      ));

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // Remote Data sources
  /// Instantiating the [BaseRemoteDataSourceImpl]
  sl.registerLazySingleton<BaseRemoteDataSource>(
      () => BaseRemoteDataSourceImpl(dio: sl()));

  sl.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImp(dio: sl()));
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  ///Repos

  sl.registerLazySingleton<HomeRepositoryImpl>(() => HomeRepositoryImpl(
      homeLocalDataSource: sl(),
      homeRemoteDataSource: sl(),
      networkInfo: sl()));

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  /// Usecases

  sl.registerLazySingleton<GetHomeUseCase>(
      () => GetHomeUseCase(homeRepository: sl()));

  sl.registerLazySingleton<GetCoursesUseCase>(
      () => GetCoursesUseCase(homeRepository: sl()));

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}
