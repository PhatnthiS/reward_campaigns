import '../models/campaign_model.dart';

abstract class CampaignRepository {
  Future<List<Campaign>> getCampaigns();
}