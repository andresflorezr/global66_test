import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FadedBackgroundIcon extends StatelessWidget {
  final String iconPath;
  final double size;
  final Color color;

  const FadedBackgroundIcon({
    super.key,
    required this.iconPath,
    this.size = 94,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white, // Visible bottom-right
            Colors.transparent, // Fades top-left
          ],
        ).createShader(bounds);
      },
      blendMode: BlendMode.dstIn,
      child: SvgPicture.asset(
        iconPath,
        width: size,
        height: size,
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
