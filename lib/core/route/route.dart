import 'package:go_router/go_router.dart';
import 'package:reward_campaigns/features/welcome/presentation/welcome_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => WelcomeScreen()),
    // GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
    // GoRoute(path: '/member', builder: (context, state) => MembershipScreen()),
    // GoRoute(path: '/refer', builder: (context, state) => ReferFriendScreen()),
    // GoRoute(path: '/history', builder: (context, state) => HistoryScreen()),
    // GoRoute(path: '/setting', builder: (context, state) => SettingScreen()),
  ],
);
