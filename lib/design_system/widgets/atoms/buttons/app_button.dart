import 'package:flutter/material.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/design_system/widgets/atoms/text/app_text.dart';
import 'package:global66_test/design_system/widgets/atoms/loaders/wave_dots_loader.dart';

enum AppButtonVariant { primary, secondary, tertiary }

enum AppButtonSize { small, medium, large }

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final AppButtonSize size;
  final bool isLoading;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool isFullWidth;

  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.size = AppButtonSize.medium,
    this.isLoading = false,
    this.prefixIcon,
    this.suffixIcon,
    this.isFullWidth = true,
  });

  @override
  Widget build(BuildContext context) {
    final isDisabled = onPressed == null || isLoading;

    return SizedBox(
      width: isFullWidth ? double.infinity : null,
      height: _getHeight(),
      child: ElevatedButton(
        onPressed: isDisabled ? null : onPressed,
        style: _getButtonStyle(),
        child: isLoading
            ? _buildLoader()
            : Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (prefixIcon != null) ...[
                    Icon(prefixIcon, size: _getIconSize()),
                    const SizedBox(width: 8),
                  ],
                  _buildText(),
                  if (suffixIcon != null) ...[
                    const SizedBox(width: 8),
                    Icon(suffixIcon, size: _getIconSize()),
                  ],
                ],
              ),
      ),
    );
  }

  Widget _buildText() {
    final textColor = _getTextColor();

    if (size == AppButtonSize.small) {
      return AppText.labelSmall(text, color: textColor);
    } else {
      return AppText.titleMedium(text, color: textColor);
    }
  }

  double _getHeight() {
    switch (size) {
      case AppButtonSize.small:
        return 36;
      case AppButtonSize.medium:
        return 48; // Standard mobile touch target
      case AppButtonSize.large:
        return 58;
    }
  }

  double _getIconSize() {
    switch (size) {
      case AppButtonSize.small:
        return 16;
      case AppButtonSize.medium:
      case AppButtonSize.large:
        return 20;
    }
  }

  Color _getTextColor() {
    if (onPressed == null) {
      // Disabled text color
      return AppColors.textSecondary;
    } else {
      switch (variant) {
        case AppButtonVariant.primary:
          return AppColors.textWhite;
        case AppButtonVariant.secondary:
          return AppColors.textPrimary;
        case AppButtonVariant.tertiary:
          return AppColors.primary;
      }
    }
  }

  Widget _buildLoader() {
    final color =
        variant == AppButtonVariant.primary ? Colors.white : AppColors.primary;

    return WaveDotsLoader(
      color: color,
      size: 24.0, // Adjust size if needed
    );
  }

  ButtonStyle _getButtonStyle() {
    Color? backgroundColor;
    Color? foregroundColor;
    Color? overlayColor;
    double elevation = 0;

    switch (variant) {
      case AppButtonVariant.primary:
        backgroundColor = AppColors.primary;
        foregroundColor = AppColors.textWhite;
        overlayColor = Colors.white.withOpacity(0.1);
        break;
      case AppButtonVariant.secondary:
        backgroundColor = AppColors.secondary;
        foregroundColor = AppColors.textPrimary;
        overlayColor = AppColors.primary.withOpacity(0.1);
        break;
      case AppButtonVariant.tertiary:
        backgroundColor = Colors.transparent;
        foregroundColor = AppColors.primary;
        overlayColor = AppColors.primary.withOpacity(0.1);
        elevation = 0;
        break;
    }

    return ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return variant == AppButtonVariant.tertiary
              ? Colors.transparent
              : Colors.grey.shade300;
        }
        return backgroundColor;
      }),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return AppColors.textSecondary;
        }
        return foregroundColor;
      }),
      overlayColor: WidgetStateProperty.all(overlayColor),
      elevation: WidgetStateProperty.all(elevation),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}
