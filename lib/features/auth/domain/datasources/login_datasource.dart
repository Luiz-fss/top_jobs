import '../../../shared/core/failure.dart';
import '../entities/user_entity.dart';
import '../helpers/authentication_params.dart';
import 'package:dartz/dartz.dart';

abstract class LoginDatasource{
  Future<Either<Failure, UserEntity>> login(AuthenticationParams params);
}