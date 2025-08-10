import 'package:reward_campaigns/domain/models/point_tracking_model.dart';

abstract class PointTrackingRepository {
  Future<PointTrackingModel> getPointTracking();
}
