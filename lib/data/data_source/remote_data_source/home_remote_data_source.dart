import 'package:vlearn_test/core/constants/constants.dart';
import 'package:vlearn_test/core/data/data_source/base_remote_datasource.dart';

import '../../Models/home_model.dart';
import '../../params/home_params.dart';

abstract class HomeRemoteDataSource extends BaseRemoteDataSourceImpl {
  HomeRemoteDataSource({required super.dio});
  Future<HomeModel> getHome(HomeParams params, token);
  Future<PaginatedCoursesModel> getAllCourses(HomeParams params, token);
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  HomeRemoteDataSourceImp({required super.dio});

  @override
  Future<HomeModel> getHome(HomeParams params, token) async {
    try {
      final response = await performGetRequest<HomeModel>(
          Endpoints.HOME, HomeModel.fromJson,
          token: token, hasDataBody: true, params: params.toJson());

      return response;
    } catch (err) {
      rethrow;
    }
  }

  @override
  Future<PaginatedCoursesModel> getAllCourses(HomeParams params, token) async {
    try {
      final response = await performGetRequest<PaginatedCoursesModel>(
          Endpoints.COURSES, PaginatedCoursesModel.fromJson,
          token: token, hasDataBody: true, params: params.toJson());

      return response;
    } catch (err) {
      rethrow;
    }
  }
}
