import 'package:flutter/material.dart';

class AppColors {
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
  static const Color textOnPrimary = Color(
    0xFFFFFFFF,
  ); // On buttons or colored background

  // === ACCENTS & STATES ===
  static const Color accent = Color(0xFF57C9E7);
  static const Color success = Color(0xFF38D39F);
  static const Color warning = Color(0xFFFFC107);
  static const Color error = Color(0xFFEE6C6C);
}
