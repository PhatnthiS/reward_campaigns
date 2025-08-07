import 'usecases.dart';

class GetCampaignsUseCase {
  final CampaignRepository repository;

  GetCampaignsUseCase(this.repository);

  Future<List<Campaign>> execute() async {
    return await repository.getCampaigns();
  }
}
