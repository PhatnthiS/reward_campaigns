import 'package:reward_campaigns/features/features.dart';

class PointTrackingScreen extends StatelessWidget {
  const PointTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PointTrackingBloc>()..add(GetPointTrackingEvent()),
      child: BlocBuilder<PointTrackingBloc, PointTrackingState>(
        builder: (context, state) {
          if (state is PointTrackingLoading) {
            return Center(
              child: CircularProgressIndicator(color: AppColors.secondary),
            );
          }
        if (state is PointTrackingLoaded) {
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
                            '${state.data.currentPoints} ${context.loc.points}',
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
                      itemCount: state.data.transactions.length,
                      separatorBuilder: (_, __) => const Divider(),
                      itemBuilder: (context, index) {
                        final item = state.data.transactions[index];
                        return ListTile(
                          leading: Icon(
                            Icons.history,
                            color: AppColors.darkBlue,
                          ),
                          title: Text(item.description),
                          trailing: Text(
                            '${item.pts} ${context.loc.points}',
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
          return Container();
        },
      ),
    );
  }
}
