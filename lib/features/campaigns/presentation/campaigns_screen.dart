import 'package:reward_campaigns/features/features.dart';

class CampaignsScreen extends StatelessWidget {
  const CampaignsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: MyAppBar(title: context.loc.campaignsTitle));
  }
}
