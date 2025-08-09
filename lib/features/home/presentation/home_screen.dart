import 'package:reward_campaigns/features/features.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _screens = [
    CampaignsScreen(),
    ReferFriendsScreen(),
    MembersScreen(),
    PointTrackingScreen(),
    SettingsScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> appbarTitle = [
      context.loc.campaignsTitle,
      context.loc.referTitle,
      context.loc.membersTitle,
      context.loc.pointsTitle,
      context.loc.setting_title,
    ];

    return Container(
      decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: true,
        appBar: MyAppBar(title: appbarTitle[_selectedIndex]),
        body: _screens[_selectedIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: AppColors.primaryGradient,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(color: AppColors.lightGray, blurRadius: 10),
              ],
            ),
            child: NavigationBar(
              backgroundColor: Colors.transparent,
              selectedIndex: _selectedIndex,
              onDestinationSelected: _onItemTapped,
              indicatorColor: AppColors.opaPurple,
              elevation: 0,
              destinations: [
                NavigationDestination(
                  icon: Icon(Icons.card_giftcard),
                  label: context.loc.campaigns,
                ),
                NavigationDestination(
                  icon: Icon(Icons.group_add_outlined),
                  label: context.loc.refer,
                ),
                NavigationDestination(
                  icon: Icon(Icons.card_membership_outlined),
                  label: context.loc.members,
                ),
                NavigationDestination(
                  icon: Icon(Icons.star_outline_rounded),
                  label: context.loc.points,
                ),
                NavigationDestination(
                  icon: Icon(Icons.settings_outlined),
                  label: context.loc.settings,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
