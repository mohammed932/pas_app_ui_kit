import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../network/erros/failures.dart';

abstract class BaseUseCase<T, Params> {
  Future<Either<Failure, T>> call({required Params params});
}

class NoParams extends Equatable {
  const NoParams();
  @override
  List<Object> get props => [];
}
