import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String message;
  const Failure({required this.message});
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message});
  @override
  List<Object?> get props => [message];
}

class FetchDataFailure extends Failure {
  const FetchDataFailure({required super.message});
  @override
  List<Object?> get props => [message];
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure({required super.message});
  @override
  List<Object?> get props => [message];
}

class NotFoundFailure extends Failure {
  const NotFoundFailure({required super.message});
  @override
  List<Object?> get props => [message];
}

class NoInternetConnectionFailure extends Failure {
  const NoInternetConnectionFailure({required super.message});
  @override
  List<Object?> get props => [message];
}

class CanceledRequestFailure extends Failure {
  const CanceledRequestFailure({required super.message});
  @override
  List<Object?> get props => [message];
}
