import 'package:reward_campaigns/features/features.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SplashBloc>().add(GetLanguageEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        switch (state) {
          case ShowWelcomeScreen():
            context.go('/welcome');
            break;
          case SkipWelcomeScreen():
            context.go('/home');
            break;
          case GetLanguage():
            context.provider.setLocale(Locale(state.language));
            break;
        }
      },
      child: const Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
