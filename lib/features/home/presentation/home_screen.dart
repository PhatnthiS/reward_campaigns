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
    MembersScreen(),
    ReferFriendsScreen(),
    PointTrackingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: AppColors.primaryGradient,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [BoxShadow(color: AppColors.lightGray, blurRadius: 10)],
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
            ],
          ),
        ),
      ),
    );
  }
}
