import 'package:flutter/material.dart';
import 'package:global66_test/design_system/theme/app_typography.dart';

enum AppTypographyVariant {
  onboardingTitle,
  displayLarge,
  displayTitle,
  titleLarge,
  titleMedium,
  bodyLarge,
  bodyMedium,
  bodyMediumError,
  labelLarge,
  labelSmall,
  caption,
}

class AppText extends StatelessWidget {
  final String text;
  final AppTypographyVariant variant;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? textDecoration;
  final Color? decorationColor;

  const AppText({
    super.key,
    required this.text,
    required this.variant,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.textDecoration,
    this.decorationColor,
  });

  const AppText.displayTitle(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.textDecoration,
    this.decorationColor,
  }) : variant = AppTypographyVariant.displayTitle;

  const AppText.displayLarge(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.textDecoration,
    this.decorationColor,
  }) : variant = AppTypographyVariant.displayLarge;

  const AppText.titleLarge(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.textDecoration,
    this.decorationColor,
  }) : variant = AppTypographyVariant.titleLarge;

  const AppText.titleMedium(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.textDecoration,
    this.decorationColor,
  }) : variant = AppTypographyVariant.titleMedium;

  const AppText.bodyLarge(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.textDecoration,
    this.decorationColor,
  }) : variant = AppTypographyVariant.bodyLarge;

  const AppText.bodyMedium(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.textDecoration,
    this.decorationColor,
  }) : variant = AppTypographyVariant.bodyMedium;

  const AppText.bodyMediumError(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.textDecoration,
    this.decorationColor,
  }) : variant = AppTypographyVariant.bodyMediumError;

  const AppText.labelLarge(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.textDecoration,
    this.decorationColor,
  }) : variant = AppTypographyVariant.labelLarge;

  const AppText.labelSmall(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.textDecoration,
    this.decorationColor,
  }) : variant = AppTypographyVariant.labelSmall;

  const AppText.caption(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.textDecoration,
    this.decorationColor,
  }) : variant = AppTypographyVariant.caption;

  const AppText.onboardingTitle(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.textDecoration,
    this.decorationColor,
  }) : variant = AppTypographyVariant.onboardingTitle;

  @override
  Widget build(BuildContext context) {
    final baseStyle = _getStyleForVariant(variant);
    final effectiveStyle = baseStyle.copyWith(
      color: color,
      decoration: textDecoration,
      decorationColor: decorationColor,
    );

    return Text(
      text,
      style: effectiveStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  TextStyle _getStyleForVariant(AppTypographyVariant variant) {
    switch (variant) {
      case AppTypographyVariant.onboardingTitle:
        return AppTypography.onboardingTitle;
      case AppTypographyVariant.displayTitle:
        return AppTypography.displayTitle;
      case AppTypographyVariant.displayLarge:
        return AppTypography.displayLarge;
      case AppTypographyVariant.titleLarge:
        return AppTypography.titleLarge;
      case AppTypographyVariant.titleMedium:
        return AppTypography.titleMedium;
      case AppTypographyVariant.bodyLarge:
        return AppTypography.bodyLarge;
      case AppTypographyVariant.bodyMedium:
        return AppTypography.bodyMedium;
      case AppTypographyVariant.bodyMediumError:
        return AppTypography.bodyMediumError;
      case AppTypographyVariant.labelLarge:
        return AppTypography.labelLarge;
      case AppTypographyVariant.labelSmall:
        return AppTypography.labelSmall;
      case AppTypographyVariant.caption:
        return AppTypography.caption;
    }
  }
}
