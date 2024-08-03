import 'package:dartz/dartz.dart';
import 'package:vlearn_test/core/domain/usecase/usecase.dart';
import 'package:vlearn_test/core/errors/failures.dart';
import 'package:vlearn_test/data/params/home_params.dart';
import 'package:vlearn_test/data/repository/home_repo.dart';

import '../../entities/home_entity.dart';


class GetCoursesUseCase extends UseCase<PaginatedListEntity, HomeParams> {
  final HomeRepositoryImpl homeRepository;

  GetCoursesUseCase({required this.homeRepository});

  @override
  Future<Either<Failure, PaginatedListEntity>>? call(params) async {
    final result = await homeRepository.getAllCourses(params);
    return result;
  }
}
