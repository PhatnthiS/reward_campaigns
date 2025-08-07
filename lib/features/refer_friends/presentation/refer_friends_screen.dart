import 'package:reward_campaigns/features/features.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/services.dart';

class ReferFriendsScreen extends StatelessWidget {
  const ReferFriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ReferFriendsBloc()..add(LoadReferFriendsEvent()),
      child: BlocBuilder<ReferFriendsBloc, ReferFriendsState>(
        builder: (context, state) {
          if (state is ReferFriendsLoading || state is ReferFriendsInitial) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.secondary),
            );
          }

          if (state is ReferFriendsLoaded) {
            final referralLink = state.referFriendsLink;

            return Scaffold(
              backgroundColor: Colors.transparent,
              body: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 24),
                    const Icon(
                      Icons.card_giftcard,
                      size: 100,
                      color: AppColors.darkBlue,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      context.loc.share_referral_title,
                      style: AppTextStyles.heading2,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      context.loc.share_referral_description,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.bodyText,
                    ),
                    const SizedBox(height: 32),
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 24,
                        ),
                        child: Column(
                          children: [
                            Text(
                              referralLink,
                              style: AppTextStyles.bodyText,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                OutlinedButton.icon(
                                  icon: const Icon(Icons.copy),
                                  label: Text(context.loc.copy),
                                  onPressed: () {
                                    Clipboard.setData(
                                      ClipboardData(text: referralLink),
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      AppSnackBar(
                                        message:
                                            context.loc.copied_to_clipboard,
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(width: 12),
                                OutlinedButton.icon(
                                  icon: const Icon(Icons.share),
                                  label: Text(context.loc.share),
                                  onPressed: () {
                                    SharePlus.instance.share(
                                      ShareParams(
                                        text: context.loc.share_referral_text(
                                          referralLink,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
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

          return const Center(child: Text("Something went wrong"));
        },
      ),
    );
  }
}
