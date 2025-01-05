import 'package:dartz/dartz.dart';

import '../network/erros/exceptions.dart';
import '../network/erros/failures.dart';

class ApiHandler {
  static Future<Either<Failure, T>> callApi<T>(
      Future<T> Function() call) async {
    try {
      final response = await call();
      return Right(response);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.msg!));
    } catch (e) {
      return Left(FetchDataFailure(message: e.toString()));
    }
  }
}
