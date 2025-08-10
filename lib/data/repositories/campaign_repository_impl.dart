import 'dart:convert';

import 'package:flutter/services.dart';

import 'repositories.dart';

class CampaignRepositoryImpl implements CampaignRepository {
  @override
  Future<List<Campaign>> getCampaigns() async {
    final jsonStr = await rootBundle.loadString('assets/json/campaigns.json');
    final List<dynamic> jsonList = json.decode(jsonStr);
    return jsonList.map((e) => Campaign.fromJson(e)).toList();
  }
}
