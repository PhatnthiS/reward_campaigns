import 'package:reward_campaigns/features/features.dart';

part 'campaigns_event.dart';

part 'campaigns_state.dart';

class CampaignsBloc extends Bloc<CampaignsEvent, CampaignsState> {
  CampaignsBloc() : super(CampaignsLoading()) {
    on<GetCampaignsEvent>((event, emit) async {
      await Future.delayed(Duration(seconds: 4));
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

  final campaigns = [
    Campaign(
      image:
          'https://images.pexels.com/photos/4348404/pexels-photo-4348404.jpeg',
      title: 'Join the Mountains',
      description:
          'Epic hiking adventuresEpic hiking adventuresEpic hiking adventuresEpic hiking adventuresEpic hiking adventuresEpic hiking adventuresEpic hiking adventuresEpic hiking adventures.',
      ctaType: CTAType.join,
    ),
    Campaign(
      image:
          'https://images.pexels.com/photos/4348404/pexels-photo-4348404.jpeg',
      title: 'Join Mountains',
      description: 'Epic hiking adventures.',
      ctaType: CTAType.join,
    ),
    Campaign(
      image:
          'https://images.pexels.com/photos/4348404/pexels-photo-4348404.jpeg',
      title: 'Join Mountains',
      description: 'Epic hiking adventures.',
      ctaType: CTAType.join,
    ),
    Campaign(
      image:
          'https://images.pexels.com/photos/3184465/pexels-photo-3184465.jpeg',
      title: 'Subscribe Premium',
      description: 'Get premium content.',
      ctaType: CTAType.subscribe,
    ),
    Campaign(
      image:
          'https://images.pexels.com/photos/4348404/pexels-photo-4348404.jpegm',
      title: 'Redeem Rewards',
      description: 'Use your points for gifts.',
      ctaType: CTAType.redeem,
    ),
  ];
}
