import 'package:top_jobs/features/auth/domain/entities/user_entity.dart';
import 'package:top_jobs/features/auth/domain/repositories/login_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../shared/core/failure.dart';
import '../helpers/authentication_params.dart';

 class LoginUsecase{
  final LoginRepository repository;

  LoginUsecase(this.repository);

  Future<Either<Failure, UserEntity>>call(AuthenticationParams params){
    return repository.login(params);
  }
}