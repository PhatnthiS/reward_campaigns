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
                  context.loc.see_all,
                  style: TextStyle(color: AppColors.green),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        SizedBox(
          height: 300,
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
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
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
                loadingBuilder: (context, child, loadingProgress) {
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
                errorBuilder: (context, error, stackTrace) {
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

            // 💡 Use Expanded/Flexible content container
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(campaign.title, style: AppTextStyles.subtitle),

                    const SizedBox(height: 4),

                    // 🧠 Constrain description height
                    ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 50),
                      child: Text(
                        campaign.description,
                        style: AppTextStyles.remark,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    const Spacer(),

                    // 🔘 ElevatedButton
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            AppSnackBar(
                              message: ctaJoinComplete(context, campaign),
                              color: AppColors.accent,
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                        ),
                        child: Text(ctaTextButton(context, campaign.ctaType)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
