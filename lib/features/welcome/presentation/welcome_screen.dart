import 'package:reward_campaigns/core/utils/extensions.dart';
import 'package:reward_campaigns/features/welcome/presentation/presentation.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.primaryGradient),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 2),

              Icon(
                Icons.campaign_rounded,
                size: 120,
                color: AppColors.lightBlue,
              ),
              SizedBox(height: 24),

              Text(
                context.loc.welcomeTitle,
                style: AppTextStyles.heading1,
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 16),

              Text(
                context.loc.welcomeSubtitle,
                style: AppTextStyles.subtitle,
                textAlign: TextAlign.center,
              ),

              Spacer(flex: 3),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                    backgroundColor: AppColors.lightYellow,
                  ),

                  child: Text(context.loc.getStarted, style: AppTextStyles.buttonText),
                ),
              ),

              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
