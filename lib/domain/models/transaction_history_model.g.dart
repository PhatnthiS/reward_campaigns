// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Transaction _$TransactionFromJson(Map<String, dynamic> json) => _Transaction(
  type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
  description: json['description'] as String,
  pts: (json['pts'] as num).toInt(),
);

Map<String, dynamic> _$TransactionToJson(_Transaction instance) =>
    <String, dynamic>{
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'description': instance.description,
      'pts': instance.pts,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.earn: 'earn',
  TransactionType.redeem: 'redeem',
  TransactionType.free: 'free',
};
