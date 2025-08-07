import 'package:reward_campaigns/features/features.dart';

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
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

              SizedBox(height: 32),

              Text(
                context.loc.welcomeRemark,
                style: AppTextStyles.remark,
                textAlign: TextAlign.center,
              ),

              Text(
                context.loc.welcomeRemarkSubtitle,
                style: AppTextStyles.remark,
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 16),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: ElevatedButton(
                  onPressed: () {
                    context.provider.setLocale(Locale(Language.EN.code));
                    context.read<WelcomeBloc>().add(
                      SetLanguageEvent(Language.EN),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: AppColors.lightBlue, width: 2),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                  ),
                  child: Text(context.loc.english),
                ),
              ),

              SizedBox(height: 16),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: ElevatedButton(
                  onPressed: () {
                    context.provider.setLocale(Locale(Language.TH.code));
                    context.read<WelcomeBloc>().add(
                      SetLanguageEvent(Language.TH),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: AppColors.lightBlue, width: 2),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                  ),
                  child: Text(context.loc.thai),
                ),
              ),

              Spacer(flex: 3),

              ElevatedButton(
                onPressed: () {
                  context.read<WelcomeBloc>().add(CompleteOnboardingEvent());
                  context.go(AppRoutes.home);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                  backgroundColor: AppColors.lightYellow,
                ),
                child: Text(
                  context.loc.getStarted,
                  style: AppTextStyles.buttonText,
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
