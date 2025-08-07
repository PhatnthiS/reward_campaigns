import 'package:reward_campaigns/domain/models/transaction_history_model.dart';

import 'models.dart';

part 'point_tracking_model.freezed.dart';

part 'point_tracking_model.g.dart';

@freezed
abstract class PointTrackingModel with _$PointTrackingModel {
  const factory PointTrackingModel({
    required int currentPoints,
    required List<Transaction> transactions,
  }) = _PointTrackingModel;

  factory PointTrackingModel.fromJson(Map<String, dynamic> json) =>
      _$PointTrackingModelFromJson(json);
}
