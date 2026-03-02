import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/design_system/widgets/atoms/text/app_text.dart';

class PokemonStatCard extends StatelessWidget {
  final String label;
  final String value;
  final String? iconPath;

  const PokemonStatCard({
    super.key,
    required this.label,
    required this.value,
    this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (iconPath != null) ...[
              SvgPicture.asset(
                iconPath!,
                width: 14,
                height: 14,
                colorFilter: const ColorFilter.mode(
                  AppColors.textSecondary,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 4),
            ],
            AppText.labelSmall(
              label,
              color: AppColors.textSecondary,
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.textSecondary.withOpacity(0.2)),
            boxShadow: [
              BoxShadow(
                color: AppColors.textPrimary.withOpacity(0.02),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: AppText.titleMedium(
            value,
            textAlign: TextAlign.center,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }
}
