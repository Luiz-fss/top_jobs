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
      final errorMessage = _mapDioErrorToMessage(e, serverMessage);
      return Left(Failure(message: errorMessage,code: statusCode));
    }catch(e){
      return Left(Failure(message: "Unxpected error",));
    }
  }
}

String _mapDioErrorToMessage(DioException e, String? serviceMessage){
  if(serviceMessage?.isNotEmpty == true){
    return serviceMessage!;
  }
  final statusCode = e.response?.statusCode;
  switch(e.type){
    case DioException.connectionTimeout:
    case DioException.sendTimeout:
    case DioException.receiveTimeout:
      return "Request timeout";

    case DioException.badResponse:
      return switch(statusCode){
        401=>"Unauthorized please check your credtials",
        403=>"Access forbidden",
        500=>"Internal server error",
        _=>"Server Error: $statusCode"
      };

    case DioExceptionType.unknown:
    default:
      return "Unknow or network error";

  }
}