part of 'checkInOut.usecase.imports.dart';

@injectable
class CheckInOutUseCase
    extends BaseUseCase<CheckInOutResponseModel, CheckInOutRequest> {
  final BaseCheckInOutRepo repo;
  CheckInOutUseCase({required this.repo});

  @override
  Future<Either<Failure, CheckInOutResponseModel>> call(
      {required CheckInOutRequest params}) {
    return repo.checkInOut(request: params);
  }
}
