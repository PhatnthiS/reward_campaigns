part of 'campaigns_bloc.dart';

abstract class CampaignsState {}

class CampaignsLoading extends CampaignsState {}

class CampaignsLoaded extends CampaignsState {
  final Map<CTAType, List<Campaign>> campaignsByType;

  CampaignsLoaded(this.campaignsByType);
}
