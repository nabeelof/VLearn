import 'package:dartz/dartz.dart';
import 'package:vlearn_test/core/domain/usecase/usecase.dart';
import 'package:vlearn_test/core/errors/failures.dart';
import 'package:vlearn_test/data/params/home_params.dart';
import 'package:vlearn_test/data/repository/home_repo.dart';
import 'package:vlearn_test/domain/entities/home_entity.dart';

class GetHomeUseCase extends UseCase<HomeEntity, HomeParams> {
  final HomeRepositoryImpl homeRepository;

  GetHomeUseCase({required this.homeRepository});

  @override
  Future<Either<Failure, HomeEntity>>? call(HomeParams params) async {
    final result = await homeRepository.getHome(params);
    return result;
  }
}