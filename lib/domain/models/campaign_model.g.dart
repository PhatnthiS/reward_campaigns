// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Campaign _$CampaignFromJson(Map<String, dynamic> json) => _Campaign(
  image: json['image'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  ctaType: $enumDecode(_$CTATypeEnumMap, json['ctaType']),
);

Map<String, dynamic> _$CampaignToJson(_Campaign instance) => <String, dynamic>{
  'image': instance.image,
  'title': instance.title,
  'description': instance.description,
  'ctaType': _$CTATypeEnumMap[instance.ctaType]!,
};

const _$CTATypeEnumMap = {
  CTAType.join: 'join',
  CTAType.subscribe: 'subscribe',
  CTAType.redeem: 'redeem',
};
