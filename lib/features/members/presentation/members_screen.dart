import 'package:shared_preferences/shared_preferences.dart';
import 'package:reward_campaigns/features/features.dart';

class MembersScreen extends StatefulWidget {
  const MembersScreen({super.key});

  @override
  MembershipScreenState createState() => MembershipScreenState();
}

class MembershipScreenState extends State<MembersScreen> {
  bool _isMember = false;

  @override
  void initState() {
    super.initState();
    _loadMembershipState();
  }

  Future<void> _loadMembershipState() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isMember = prefs.getBool('isMember') ?? false;
    });
  }

  Future<void> _joinMembership() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isMember', true);
    setState(() {
      _isMember = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MembersBloc()..add(LoadMemberEvent()),
      child: BlocBuilder<MembersBloc, MembersState>(
        builder: (context, state) {
          if (state is MembersLoading || state is MembersLoading) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.secondary),
            );
          }

          if (state is MembersLoaded) {
            return Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    Icon(
                      Icons.workspace_premium,
                      size: 100,
                      color: AppColors.darkBlue,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      _isMember
                          ? 'Welcome Back, Member! 🎉'
                          : 'Become a Member!',
                      style: AppTextStyles.heading2,

                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _isMember
                          ? 'Thank you for joining our community.'
                          : 'Join now to unlock exclusive features and stay connected!',
                      style: AppTextStyles.bodyText,

                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    if (!_isMember)
                      ElevatedButton.icon(
                        onPressed: _joinMembership,
                        icon: Icon(Icons.check_circle),
                        label: Text('Join Now'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.lightGreen,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          textStyle: AppTextStyles.buttonText,
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
