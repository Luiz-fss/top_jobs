import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:top_jobs/features/shared/core/failure.dart';
import 'package:top_jobs/features/shared/core/http_client.dart';

class HttpClientImpl implements HttpClient {
  final Dio _dio;
  HttpClientImpl(this._dio);
  @override
  Future<Either<Failure, T>> post<T>({
    required String url,
    required Map<String, dynamic> data,
    required T Function(dynamic json) fromJson,
  }) async{
    try{
      final response = await _dio.post(url,data: data);

      return Right(fromJson(response.data));
    }on DioException catch(e){
      final statusCode = e.response?.statusCode;
      final serverMessage = e.response?.data["message"];
      return Left(Failure(message: serverMessage,code: statusCode));
    }catch(e){
      return Left(Failure(message: "Unxpect error",));
    }
  }
}
