// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_tracking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PointTrackingModel _$PointTrackingModelFromJson(Map<String, dynamic> json) =>
    _PointTrackingModel(
      currentPoints: (json['currentPoints'] as num).toInt(),
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PointTrackingModelToJson(_PointTrackingModel instance) =>
    <String, dynamic>{
      'currentPoints': instance.currentPoints,
      'transactions': instance.transactions,
    };
