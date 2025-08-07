import 'package:reward_campaigns/features/features.dart';

class CampaignsScreen extends StatelessWidget {
  const CampaignsScreen({super.key});

  static final campaigns = [
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

  Map<CTAType, List<Campaign>> get campaignsByType {
    return campaigns.fold({}, (map, campaign) {
      map.putIfAbsent(campaign.ctaType, () => []).add(campaign);
      return map;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map<CTAType, List<Campaign>> grouped = campaignsByType;

    return Container(
      decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(title: context.loc.campaignsTitle),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (grouped[CTAType.join]!.isNotEmpty)
                CampaignSection(
                  title: context.loc.campaign_join_now,
                  campaigns: grouped[CTAType.join]!,
                ),
              if (grouped[CTAType.subscribe]!.isNotEmpty)
                CampaignSection(
                  title: context.loc.campaign_subscribe,
                  campaigns: grouped[CTAType.subscribe]!,
                ),
              if (grouped[CTAType.redeem]!.isNotEmpty)
                CampaignSection(
                  title: context.loc.campaign_redeem,
                  campaigns: grouped[CTAType.redeem]!,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
