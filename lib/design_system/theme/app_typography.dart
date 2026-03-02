import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTypography {
  // Headings
  static TextStyle displayTitle = GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
  static TextStyle onboardingTitle = GoogleFonts.poppins(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
  static TextStyle displayLarge = GoogleFonts.poppins(
    fontSize: 21,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static TextStyle titleLarge = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static TextStyle titleMedium = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  // Body
  static TextStyle bodyLarge = GoogleFonts.poppins(
    fontSize: 16,
    color: AppColors.textSecondary,
    height: 1.5,
  );

  static TextStyle bodyMedium = GoogleFonts.poppins(
    fontSize: 14,
    color: AppColors.textSecondary,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );
  static TextStyle bodyMediumError = GoogleFonts.poppins(
    fontSize: 14,
    color: const Color(0xFF4D4D4D),
    fontWeight: FontWeight.w400,
    height: 1.4,
    decorationColor: AppColors.primary,
  );

  // Labels / Captions
  static TextStyle labelLarge = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w600, // Semibold as seen in chips
    color: AppColors.textWhite,
  );

  static TextStyle labelSmall = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.textWhite,
  );

  static TextStyle itemSelected = GoogleFonts.poppins(
    fontSize: 13,
    fontWeight: FontWeight.w700,
    color: AppColors.textSecondary,
  );
  static TextStyle itemUnselected = GoogleFonts.poppins(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );
  static TextStyle caption = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textTertiary,
  );
}
