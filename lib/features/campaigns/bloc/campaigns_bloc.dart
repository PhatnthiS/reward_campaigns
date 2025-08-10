import 'package:reward_campaigns/features/features.dart';

part 'campaigns_event.dart';

part 'campaigns_state.dart';

class CampaignsBloc extends Bloc<CampaignsEvent, CampaignsState> {
  final GetCampaignsUseCase getCampaignsUseCase;

  CampaignsBloc({required this.getCampaignsUseCase})
    : super(CampaignsLoading()) {
    on<GetCampaignsEvent>((event, emit) async {
      await Future.delayed(Duration(seconds: 2));
      final campaigns = await getCampaignsUseCase.execute();
      final grouped = groupByType(campaigns);
      emit(CampaignsLoaded(grouped));
    });
  }

  Map<CTAType, List<Campaign>> groupByType(List<Campaign> campaigns) {
    return campaigns.fold({}, (map, campaign) {
      map.putIfAbsent(campaign.ctaType, () => []).add(campaign);
      return map;
    });
  }
}
