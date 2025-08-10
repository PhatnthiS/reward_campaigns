import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reward_campaigns/core/constants/enums.dart';
import 'package:reward_campaigns/core/utils/extensions.dart';

void main() {
  group('PointsExtension', () {
    test('formats points correctly', () {
      expect(100.formatPoints(TransactionType.earn), '+100');
      expect(50.formatPoints(TransactionType.redeem), '-50');
      expect(0.formatPoints(TransactionType.free), '0');
    });

    test('returns correct color based on type', () {
      expect(100.pointColor(TransactionType.earn), Colors.green);
      expect(50.pointColor(TransactionType.redeem), Colors.red);
      expect(25.pointColor(TransactionType.free), Colors.grey);
    });

    test('returns default format and color for unknown type', () {
      final unknownType = TransactionType.values.firstWhere(
        (e) => ![
          TransactionType.earn,
          TransactionType.redeem,
          TransactionType.free,
        ].contains(e),
        orElse: () => TransactionType.free,
      );

      expect(0.formatPoints(unknownType), '0');
      expect(0.pointColor(unknownType), Colors.grey);
    });
  });
}
