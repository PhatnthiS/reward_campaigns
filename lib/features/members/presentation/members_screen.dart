import 'package:reward_campaigns/features/features.dart';

class MembersScreen extends StatefulWidget {
  const MembersScreen({super.key});

  @override
  MembershipScreenState createState() => MembershipScreenState();
}

class MembershipScreenState extends State<MembersScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<MembersBloc>()..add(LoadMemberEvent()),
      child: BlocBuilder<MembersBloc, MembersState>(
        builder: (context, state) {
          if (state is MembersInitial || state is MembersLoading) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.secondary),
            );
          }

          if (state is MembersLoaded) {
            return Scaffold(
              backgroundColor: Colors.transparent,
              body: Padding(
                padding: const EdgeInsets.all(24),
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 24),
                      Icon(
                        state.isMember
                            ? Icons.stars_rounded
                            : Icons.workspace_premium,
                        size: 100,
                        color: state.isMember
                            ? AppColors.yellow
                            : AppColors.darkBlue,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        state.isMember
                            ? context.loc.member_title(state.userName)
                            : context.loc.non_member_title,
                        style: AppTextStyles.heading2,

                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        state.isMember
                            ? context.loc.member_description
                            : context.loc.non_member_description,
                        style: AppTextStyles.bodyText,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      if (!state.isMember)
                        ElevatedButton.icon(
                          onPressed: () async {
                            await showSignInPopUp(
                              context: context,
                              onJoin: (username) {
                                context.read<MembersBloc>().add(
                                  JoinMemberEvent(username),
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.check_circle),
                          label: Text(context.loc.join_now),
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
              ),
            );
          }
          return const Center(child: Text("Something went wrong"));
        },
      ),
    );
  }
}
