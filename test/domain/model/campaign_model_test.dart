import 'package:flutter_test/flutter_test.dart';
import 'package:reward_campaigns/core/widgets/widgets.dart';

void main() {
  group('Campaign Model', () {
    test('supports value equality - true case', () {
      final campaign1 = Campaign(
        image: 'img.png',
        title: 'Title',
        description: 'Desc',
        ctaType: CTAType.join,
      );

      final campaign2 = Campaign(
        image: 'img.png',
        title: 'Title',
        description: 'Desc',
        ctaType: CTAType.join,
      );

      expect(campaign1, equals(campaign2));
    });

    test('supports value equality - false case (different title)', () {
      final campaign1 = Campaign(
        image: 'img.png',
        title: 'Title A',
        description: 'Desc',
        ctaType: CTAType.join,
      );

      final campaign2 = Campaign(
        image: 'img.png',
        title: 'Title B',
        description: 'Desc',
        ctaType: CTAType.join,
      );

      expect(campaign1, isNot(equals(campaign2)));
    });

    test('fromJson creates correct model', () {
      final json = {
        'image': 'img.png',
        'title': 'Title',
        'description': 'Desc',
        'ctaType': 'join',
      };

      final campaign = Campaign.fromJson(json);

      expect(campaign.image, 'img.png');
      expect(campaign.title, 'Title');
      expect(campaign.description, 'Desc');
      expect(campaign.ctaType, CTAType.join);
    });

    test('fromJson with invalid ctaType throws error', () {
      final json = {
        'image': 'img.png',
        'title': 'Title',
        'description': 'Desc',
        'ctaType': 'invalid_value',
      };

      expect(() => Campaign.fromJson(json), throwsA(isA<ArgumentError>()));
    });

    test('toJson returns correct map', () {
      final campaign = Campaign(
        image: 'img.png',
        title: 'Title',
        description: 'Desc',
        ctaType: CTAType.join,
      );

      final json = campaign.toJson();

      expect(json['image'], 'img.png');
      expect(json['title'], 'Title');
      expect(json['description'], 'Desc');
      expect(json['ctaType'], 'join');
    });

    test('toJson returns different map when model changes', () {
      final campaign = Campaign(
        image: 'img2.png',
        title: 'Another Title',
        description: 'Another Desc',
        ctaType: CTAType.subscribe,
      );

      final json = campaign.toJson();

      expect(json['image'], isNot('img.png'));
      expect(json['ctaType'], isNot('join'));
    });
  });
}
