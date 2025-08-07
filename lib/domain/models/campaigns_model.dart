import 'models.dart';

class Campaign {
  final String image;
  final String title;
  final String description;
  final CTAType ctaType;

  Campaign({
    required this.image,
    required this.title,
    required this.description,
    required this.ctaType,
  });
}
