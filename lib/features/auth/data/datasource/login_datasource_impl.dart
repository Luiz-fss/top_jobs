import 'package:dartz/dartz.dart';
import 'package:top_jobs/features/auth/domain/datasources/login_datasource.dart';
import 'package:top_jobs/features/auth/domain/entities/user_entity.dart';
import 'package:top_jobs/features/auth/domain/helpers/authentication_params.dart';
import 'package:top_jobs/features/shared/core/failure.dart';

class LoginDatasourceImpl implements LoginDatasource {
  @override
  Future<Either<Failure, UserEntity>> login(AuthenticationParams params) {
    // TODO: implement login
    throw UnimplementedError();
  }
}