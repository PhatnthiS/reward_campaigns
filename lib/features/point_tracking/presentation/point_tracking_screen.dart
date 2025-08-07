import 'package:reward_campaigns/features/features.dart';

class PointTrackingScreen extends StatelessWidget {
  const PointTrackingScreen({super.key});

  final int currentPoints = 200; // Mocked current points

  final List<Map<String, dynamic>> transactions = const [
    {'description': 'Joined campaign', 'points': 50},
    {'description': 'Redeemed reward', 'points': -300},
    {'description': 'Referral bonus', 'points': 100},
    {'description': 'Purchased item', 'points': -150},
    {'description': 'Completed profile', 'points': 30},
    {'description': 'Daily login', 'points': 20},
    {'description': 'Watched ad', 'points': 10},
    {'description': 'Premium feature unlock', 'points': -200},
    {'description': 'Shared app', 'points': 25},
    {'description': 'Invite accepted', 'points': 100},
    {'description': 'Spin reward used', 'points': -100},
    {'description': 'Bonus for streak', 'points': 40},
    {'description': 'Redeemed coupon', 'points': -75},
    {'description': 'Completed survey', 'points': 60},
    {'description': 'Gifted to friend', 'points': -250},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Current Points
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.lightBlue,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Text(
                    context.loc.current_points,
                    style: AppTextStyles.heading2.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '$currentPoints ${context.loc.points}',
                    style: AppTextStyles.heading1.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Text(
              context.loc.transaction_history,
              style: AppTextStyles.heading2,
            ),

            const SizedBox(height: 10),

            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: transactions.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final item = transactions[index];
                return ListTile(
                  leading: Icon(Icons.history, color: AppColors.darkBlue),
                  title: Text(item['description']),
                  trailing: Text(
                    '${item['points']} ${context.loc.points}',
                    style: AppTextStyles.subtitle,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
