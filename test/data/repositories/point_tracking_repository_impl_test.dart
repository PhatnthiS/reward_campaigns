import 'package:flutter_test/flutter_test.dart';
import 'package:reward_campaigns/core/constants/constants.dart';
import 'package:reward_campaigns/domain/models/point_tracking_model.dart';
import 'package:reward_campaigns/domain/models/transaction_history_model.dart';

void main() {
  group('PointTrackingModel', () {
    final transaction1 = Transaction(
      type: TransactionType.earn,
      description: 'Earned points',
      pts: 50,
    );

    final transaction2 = Transaction(
      type: TransactionType.redeem,
      description: 'Spent points',
      pts: -20,
    );

    final model = PointTrackingModel(
      currentPoints: 30,
      transactions: [transaction1, transaction2],
    );

    test('supports value equality - true case', () {
      final model2 = PointTrackingModel(
        currentPoints: 30,
        transactions: [transaction1, transaction2],
      );

      expect(model, equals(model2));
    });

    test('supports value equality - false case (different points)', () {
      final model2 = PointTrackingModel(
        currentPoints: 99,
        transactions: [transaction1, transaction2],
      );

      expect(model, isNot(equals(model2)));
    });

    test('fromJson should parse correctly', () {
      final json = {
        'currentPoints': 30,
        'transactions': [
          {
            'type': 'earn',
            'description': 'Earned points',
            'pts': 50,
          },
          {
            'type': 'redeem',
            'description': 'Spent points',
            'pts': -20,
          }
        ]
      };

      final result = PointTrackingModel.fromJson(json);

      expect(result.currentPoints, 30);
      expect(result.transactions.length, 2);
      expect(result.transactions.first.type, TransactionType.earn);
    });

    test('fromJson with invalid transaction type should throw', () {
      final json = {
        'currentPoints': 30,
        'transactions': [
          {
            'type': 'invalid_type',
            'description': 'Bad type',
            'pts': 10,
          }
        ]
      };

      expect(() => PointTrackingModel.fromJson(json), throwsA(isA<ArgumentError>()));
    });

    test('toJson should return correct map', () {
      final json = model.toJson();

      expect(json['currentPoints'], 30);
      expect(json['transactions'], isA<List>());

      final transaction = json['transactions'][0];
      expect(transaction.type, TransactionType.earn);
    });

    test('toJson should reflect changes', () {
      final updatedModel = model.copyWith(currentPoints: 100);
      final json = updatedModel.toJson();

      expect(json['currentPoints'], 100);
      expect(json['currentPoints'], isNot(30));
    });
  });
}
