import 'package:flutter/material.dart';
import 'package:global66_test/features/pokedex/domain/enums/pokemon_type_enum.dart';

class AppColors {
  // Primary & Secondary (User defined)
  static const Color primary = Color(0xFF1E88E5);
  static const Color secondary = Color(0xFFEEEEEE);

  // Backgrounds
  static const Color background = Colors.white;
  static const Color backgroundDark = Color(
    0xFF1E1F22,
  );
  static const Color selected = Color(0xFF1565C0);
  static const Color unnselected = Color(0xFF424242);
  // other colors
  static const Color redTrash = Color(0xFFCD3131);
  static const Color redHeart = Color(0xFFE53935);
  static const Color blueOnboard = Color(0xFF4565B7);
  static const Color grey = Color(0xFF9E9E9E);
  static const Color greyLight = Color(0xFFE0E0E0);
  static const Color pink = Color(0xFFFF7596);

  // Text Colors
  static const Color textPrimary = Color(0xFF121212);
  static const Color textSecondary = Color(0xFF424242);
  static const Color textTertiary = Color(0xFF4D4D4D);
  static const Color textWhite = Colors.white;

  // Pokemon Type Colors (Exact matches from provided image analysis)
  static const Color typeWater = Color(0xFF2196F3);
  static const Color typeDragon = Color(0xFF00ACC1);
  static const Color typeElectric = Color(0xFFFDD835);
  static const Color typeFairy = Color(0xFFE91E63);
  static const Color typeGhost = Color(0xFF8E24AA);
  static const Color typeFire = Color(0xFFFF9800);
  static const Color typeIce = Color(0xFF3D8BFF);
  static const Color typeGrass = Color(0xFF8BC34A);
  static const Color typeBug = Color(0xFF43A047);
  static const Color typeFighting = Color(0xFFE53935);
  static const Color typeNormal = Color(0xFF546E7A);
  static const Color typeDark = Color(0xFF546E7A);
  static const Color typeSteel = Color(0xFF546E7A);
  static const Color typeRock = Color(0xFF795548);
  static const Color typePsychic = Color(0xFF673AB7);
  static const Color typeGround = Color(0xFFFFB300);
  static const Color typePoison = Color(0xFF9C27B0);
  static const Color typeFlying = Color(0xFF00BCD4);

  // Helper to get color by type name (supports English and Spanish)
  static Color getTypeColor(String type) {
    return PokemonType.fromString(type).color;
  }
}
