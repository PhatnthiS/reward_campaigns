import 'dart:convert';

import 'package:flutter/services.dart';

import 'repositories.dart';

class PointTrackingRepositoryImpl implements PointTrackingRepository {
  @override
  Future<PointTrackingModel> getPointTracking() async {
    final jsonStr = await rootBundle.loadString(
      'assets/json/point_tracking.json',
    );

    final Map<String, dynamic> jsonMap = jsonDecode(jsonStr);
    return PointTrackingModel.fromJson(jsonMap);
  }
}
