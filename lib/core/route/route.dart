import 'package:reward_campaigns/features/features.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) =>BlocProvider(
        create: (_) => getIt<SplashBloc>()..add(CheckFirstLaunchEvent()),
        child: const SplashScreen(),
      ),
    ),
    GoRoute(
      path: AppRoutes.welcome,
      builder: (context, state) => BlocProvider(
        create: (_) => getIt<WelcomeBloc>(),
        child: const WelcomeScreen(),
      ),
    ),
    GoRoute(path: AppRoutes.home, builder: (context, state) => HomeScreen()),
    // GoRoute(path: '/member', builder: (context, state) => MembershipScreen()),
    // GoRoute(path: '/refer', builder: (context, state) => ReferFriendScreen()),
    // GoRoute(path: '/history', builder: (context, state) => HistoryScreen()),
    // GoRoute(path: '/setting', builder: (context, state) => SettingScreen()),
  ],
);
