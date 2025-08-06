import 'package:go_router/go_router.dart';
import 'package:reward_campaigns/features/features.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.welcome,
      builder: (context, state) => WelcomeScreen(),
    ),
    // GoRoute(path: '/member', builder: (context, state) => MembershipScreen()),
    // GoRoute(path: '/refer', builder: (context, state) => ReferFriendScreen()),
    // GoRoute(path: '/history', builder: (context, state) => HistoryScreen()),
    // GoRoute(path: '/setting', builder: (context, state) => SettingScreen()),
  ],
);
