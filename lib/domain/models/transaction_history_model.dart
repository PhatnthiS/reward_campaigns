import 'models.dart';

part 'transaction_history_model.freezed.dart';

part 'transaction_history_model.g.dart';

@freezed
abstract class Transaction with _$Transaction {
  const factory Transaction({
    required TransactionType type,
    required String description,
    required int pts,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
