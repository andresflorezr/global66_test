import 'package:flutter/material.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/design_system/widgets/atoms/buttons/app_button.dart';
import 'package:global66_test/design_system/widgets/atoms/text/app_text.dart';

class TemplateScreenWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String? buttonText;
  final VoidCallback? onButtonPressed;

  const TemplateScreenWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    this.buttonText,
    this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16),
            AppText.titleLarge(
              title,
              textAlign: TextAlign.center,
              color: AppColors.textSecondary,
            ),
            const SizedBox(height: 6),
            AppText.bodyMediumError(
              description,
              textAlign: TextAlign.center,
              color: AppColors.textTertiary,
            ),
            if (buttonText != null && onButtonPressed != null) ...[
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: AppButton(
                  text: buttonText!,
                  onPressed: onButtonPressed!,
                  variant: AppButtonVariant.primary,
                  size: AppButtonSize.large,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
