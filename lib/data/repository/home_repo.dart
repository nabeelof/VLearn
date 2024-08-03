import 'package:dartz/dartz.dart';
import 'package:vlearn_test/core/data/repository/base_repository.dart';
import 'package:vlearn_test/core/errors/exceptions.dart';
import 'package:vlearn_test/core/errors/failures.dart';
import 'package:vlearn_test/data/data_source/local_data_source/home_locale_data_source.dart';
import 'package:vlearn_test/data/data_source/remote_data_source/home_remote_data_source.dart';
import 'package:vlearn_test/data/params/home_params.dart';
import 'package:vlearn_test/domain/entities/home_entity.dart';

import '../../core/constants/constants.dart';

abstract class HomeRepository extends BaseRepositoryImpl {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepository({
    required this.homeLocalDataSource,
    required this.homeRemoteDataSource,
    required super.networkInfo,
  }) : super(
      baseRemoteDataSource: homeRemoteDataSource,
      baseLocalDataSource: homeLocalDataSource);

  Future<Either<Failure, HomeEntity>> getHome(HomeParams params);
  Future<Either<Failure, PaginatedListEntity>> getAllCourses(HomeParams params);
}

class HomeRepositoryImpl extends HomeRepository {
  HomeRepositoryImpl({required super.homeLocalDataSource, required super.homeRemoteDataSource, required super.networkInfo});


  @override
  Future<Either<Failure, HomeEntity>> getHome(HomeParams params) async {
    return checkNetwork(() async {
      return await requestWithToken((token) async {
        try {
          final result = await homeRemoteDataSource.getHome(params, token);
          return Right(result.toDomain());
        } on ServerException catch (_) {
          return Left(ServerFailure(ErrorCode.SERVER_ERROR, ''));
        } catch (e) {
          return Left(ServerFailure(ErrorCode.SERVER_ERROR, ''));
        }
      });
    });
  }

  @override
  Future<Either<Failure, PaginatedListEntity>> getAllCourses(HomeParams params) {
    return checkNetwork(() async {
      return await requestWithToken((token) async {
        try {
          final result =
          await homeRemoteDataSource.getAllCourses(params, token);
          return Right(result.toDomain());
        } on ServerException catch (_) {
          return Left(ServerFailure(ErrorCode.SERVER_ERROR, ''));
        } catch (e) {
          return Left(ServerFailure(ErrorCode.SERVER_ERROR, ''));
        }
      });
    });
  }
}
