import 'package:reward_campaigns/features/features.dart';
import 'package:reward_campaigns/features/settings/bloc/settings_bloc.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SettingsBloc>()..add(GetUsernameEvent()),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (state is SettingsInitial || state is SettingsLoading)
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Center(
                        child: CircularProgressIndicator(
                          color: AppColors.secondary,
                        ),
                      ),
                    ),
                  if (state is UserNameLoaded)
                    if (state.isMember)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              gradient: AppColors.primaryGradient,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Icon(size: 50, Icons.account_circle_rounded),
                                SizedBox(width: 16),
                                Text(
                                  state.userName,
                                  style: AppTextStyles.heading2,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30),

                          Text(
                            context.loc.account,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 8),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.person),
                                  title: Text(context.loc.change_username),
                                  trailing: Icon(Icons.chevron_right),
                                  onTap: () async {
                                    await showSignInPopUp(
                                      context: context,
                                      buttonTitle: context.loc.update,
                                      onJoin: (username) {
                                        context.read<SettingsBloc>().add(
                                          ChangeUsernameEvent(username),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                  SizedBox(height: 30),

                  Text(
                    context.loc.language,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.language),
                          title: Text(context.loc.language),
                          trailing: Icon(Icons.chevron_right),
                          onTap: () async {},
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 40),

                  Center(
                    child: TextButton.icon(
                      icon: Icon(
                        Icons.delete_forever_rounded,
                        color: Colors.white,
                      ),
                      label: Text(
                        context.loc.clear_cache,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        context.read<SettingsBloc>().add(ClearCacheEvent());
                        ScaffoldMessenger.of(context).showSnackBar(
                          AppSnackBar(
                            icon: Icons.delete_forever_rounded,
                            color: Colors.red,
                            message: context.loc.clear_cache_complete,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
