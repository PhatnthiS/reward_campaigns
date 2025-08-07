import 'models.dart';

part 'campaign_model.freezed.dart';

part 'campaign_model.g.dart';

@freezed
abstract class Campaign with _$Campaign {
  const factory Campaign({
    required String image,
    required String title,
    required String description,
    required CTAType ctaType,
  }) = _Campaign;

  factory Campaign.fromJson(Map<String, dynamic> json) =>
      _$CampaignFromJson(json);
}
