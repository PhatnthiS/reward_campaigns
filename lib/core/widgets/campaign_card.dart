import 'package:reward_campaigns/core/widgets/widgets.dart';

class CampaignSection extends StatelessWidget {
  final String title;
  final List<Campaign> campaigns;

  const CampaignSection({
    super.key,
    required this.title,
    required this.campaigns,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: AppTextStyles.heading2),
              InkWell(
                onTap: () {
                  //TODO : Handle OnClick See All
                },
                child: Text(
                  context.loc.seeAll,
                  style: TextStyle(color: AppColors.green),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        SizedBox(
          height: 260,
          child: ListView.separated(
            padding: const EdgeInsets.only(left: 24),
            scrollDirection: Axis.horizontal,
            itemCount: campaigns.length,
            physics: PageScrollPhysics(),
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              return CampaignCard(campaign: campaigns[index]);
            },
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

class CampaignCard extends StatelessWidget {
  final Campaign campaign;

  const CampaignCard({super.key, required this.campaign});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              child: Image.network(
                campaign.image,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
                loadingBuilder:
                    (
                      BuildContext context,
                      Widget child,
                      ImageChunkEvent? loadingProgress,
                    ) {
                      if (loadingProgress == null) return child;
                      return SizedBox(
                        height: 150,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: AppColors.secondary,
                          ),
                        ),
                      );
                    },
                errorBuilder:
                    (
                      BuildContext context,
                      Object error,
                      StackTrace? stackTrace,
                    ) {
                      return SizedBox(
                        height: 150,
                        child: Center(
                          child: Icon(
                            Icons.error_outline_outlined,
                            size: 50,
                            color: Colors.grey,
                          ),
                        ),
                      );
                    },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(campaign.title, style: AppTextStyles.subtitle),
                  const SizedBox(height: 4),
                  Text(
                    campaign.description,
                    style: AppTextStyles.remark,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
