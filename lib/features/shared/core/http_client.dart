import 'package:top_jobs/features/shared/core/failure.dart';
import 'package:dartz/dartz.dart';
abstract class HttpClient {
  Future<Either<Failure,T>>post<T>({
    required String url,
    required Map<String,dynamic> data,
    required T Function(dynamic json) fromJson
    });
}