import 'package:top_jobs/features/auth/domain/entities/user_entity.dart';
import 'package:top_jobs/features/auth/domain/helpers/authentication_params.dart';
import 'package:dartz/dartz.dart';
import '../../../shared/core/failure.dart';

abstract class LoginRepository{

  Future<Either<Failure, UserEntity>> login(AuthenticationParams params);
}