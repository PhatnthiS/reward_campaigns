import 'usecases.dart';

class GetPointTrackingUseCase {
  final PointTrackingRepository repository;

  GetPointTrackingUseCase(this.repository);

  Future<PointTrackingModel> call() {
    return repository.getPointTracking();
  }
}