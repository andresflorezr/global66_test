import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/design_system/widgets/atoms/text/app_text.dart';

import 'package:global66_test/commons/constants/assets_constants.dart';

class AppTag extends StatelessWidget {
  final String text;

  const AppTag({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final color = AppColors.getTypeColor(text);
    final icon = AssetsConstants.getTypeIcon(text);

    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20), // Pill shape
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2.9),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildIcon(color, icon),
          const SizedBox(width: 8),
          AppText.labelSmall(
              text.substring(0, 1).toUpperCase() + text.substring(1),
              color: AppColors.textWhite),
        ],
      ),
    );
  }

  Widget _buildIcon(Color color, String icon) {
    return Container(
      width: 20,
      height: 20,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(3), // Padding inside white circle
      child: _safeSvgPicture(color, icon),
    );
  }

  Widget _safeSvgPicture(Color color, String icon) {
    try {
      return SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          color, // Icon colored same as tag background
          BlendMode.srcIn,
        ),
        placeholderBuilder: (BuildContext context) => const Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        ),
      );
    } catch (e) {
      return Icon(Icons.error_outline, size: 16, color: color);
    }
  }
}
