import 'package:flutter/material.dart';

abstract class AppColors {
  // === PRIMARY THEME COLORS ===
  static const Color primary = Color(0xFFAAF683);
  static const Color secondary = Color(0xFF72D9F5);

  // === GRADIENT ===
  static const Gradient primaryGradient = LinearGradient(
    colors: [primary, secondary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // === TEXT COLORS ===
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF4F4F4F);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // === ACCENTS & STATES ===
  static const Color accent = Color(0xFF57C9E7);
  static const Color success = Color(0xFF38D39F);
  static const Color warning = Color(0xFFFFC107);
  static const Color error = Color(0xFFEE6C6C);

  // === Yellows ===
  static const Color lightYellow = Color(0xFFFFF9C4);
  static const Color yellow = Color(0xFFFFEB3B);
  static const Color darkYellow = Color(0xFFFBC02D);

  // === Greens ===
  static const Color lightGreen = Color(0xFF81C784);
  static const Color green = Color(0xFF43A047);
  static const Color darkGreen = Color(0xFF1B5E20);

  // === Blues ===
  static const Color lightBlue = Color(0xFF64B5F6);
  static const Color blue = Color(0xFF1E88E5);
  static const Color darkBlue = Color(0xFF0D47A1);

  // === Purples ===
  static const Color opaPurple = Color(0x26673AB7);

  // === Neutrals ===
  static const Color lightGray = Color(0xFFF5F5F5);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
}
