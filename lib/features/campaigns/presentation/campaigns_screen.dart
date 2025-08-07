import 'package:reward_campaigns/features/features.dart';

class CampaignsScreen extends StatelessWidget {
  const CampaignsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CampaignsBloc()..add(GetCampaignsEvent()),
      child: BlocBuilder<CampaignsBloc, CampaignsState>(
        builder: (context, state) {
          if (state is CampaignsLoading) {
            return Center(
              child: CircularProgressIndicator(color: AppColors.secondary),
            );
          }
          if (state is CampaignsLoaded) {
            return SingleChildScrollView(
              padding: const EdgeInsets.only(top: 16, bottom: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (state.campaignsByType[CTAType.join]?.isNotEmpty ?? false)
                    CampaignSection(
                      title: context.loc.campaign_join_now,
                      campaigns: state.campaignsByType[CTAType.join]!,
                    ),
                  if (state.campaignsByType[CTAType.subscribe]?.isNotEmpty ??
                      false)
                    CampaignSection(
                      title: context.loc.campaign_subscribe,
                      campaigns: state.campaignsByType[CTAType.subscribe]!,
                    ),
                  if (state.campaignsByType[CTAType.redeem]?.isNotEmpty ??
                      false)
                    CampaignSection(
                      title: context.loc.campaign_redeem,
                      campaigns: state.campaignsByType[CTAType.redeem]!,
                    ),
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
