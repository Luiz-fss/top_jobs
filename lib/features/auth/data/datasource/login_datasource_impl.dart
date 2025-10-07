import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:top_jobs/features/auth/domain/datasources/login_datasource.dart';
import 'package:top_jobs/features/auth/domain/entities/user_entity.dart';
import 'package:top_jobs/features/auth/domain/helpers/authentication_params.dart';
import 'package:top_jobs/features/auth/infraestructure/mappers/user_mapper.dart';
import 'package:top_jobs/features/auth/infraestructure/user_response/user_response_api.dart';
import 'package:top_jobs/features/shared/core/failure.dart';
import 'package:top_jobs/features/shared/core/http_client.dart';

class LoginDatasourceImpl implements LoginDatasource {
  final HttpClient _httpClient;

  LoginDatasourceImpl(this._httpClient);
  @override
  Future<Either<Failure, UserEntity>> login(AuthenticationParams params) async {
    return _httpClient.post(
      url: "/auth/login",
      data: RemoteAuthenticationParams.fromDomain(params).toJson(),
      fromJson: (json) => UserMapper.userModelToEntity(
        UserResponseApi.fromJson(json).data.user,
      ),
    );
  }
}

class RemoteAuthenticationParams {
  final String email;
  final String password;

  RemoteAuthenticationParams({required this.email, required this.password});

  factory RemoteAuthenticationParams.fromDomain(AuthenticationParams params) {
    return RemoteAuthenticationParams(
      email: params.email,
      password: params.secret,
    );
  }

  Map<String, dynamic> toJson() => {"email": email, "password": password};
}
