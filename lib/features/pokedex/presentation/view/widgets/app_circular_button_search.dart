import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:global66_test/commons/constants/assets_constants.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';

class AppCircularButtonSearch extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final Color? iconColor;
  final Color? borderColor;
  final Color? backgroundColor;

  const AppCircularButtonSearch({
    super.key,
    required this.icon,
    this.onPressed,
    this.iconColor,
    this.borderColor,
    this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 54,
          height: 50,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
            border: Border.all(color: borderColor ?? AppColors.greyLight),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            child: SvgPicture.asset(
              AssetsConstants.searchIcon,
              width: 20,
              height: 20,
              colorFilter: const ColorFilter.mode(
                AppColors.grey,
                BlendMode.srcIn,
              ),
            ),
          ),
        ));
  }
}
