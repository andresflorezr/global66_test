import 'package:flutter/material.dart';
import 'package:global66_test/commons/constants/assets_constants.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/design_system/widgets/atoms/icon/faded_background_icon.dart';
import 'package:global66_test/design_system/widgets/molecules/arc_clipper/arc_clipper.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';

class PokemonHeader extends StatelessWidget {
  final PokemonDetail pokemon;

  const PokemonHeader({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor = pokemon.types.isNotEmpty
        ? AppColors.getTypeColor(pokemon.types.first.name)
        : AppColors.textSecondary;

    return SizedBox(
      height: 365,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          // Background Curve
          Positioned(
            child: ClipPath(
              clipper: ArcClipper(),
              child: Container(
                height: 400,
                color: primaryColor,
              ),
            ),
          ),
          // Pokemon Image (positioned to overlap)
          Positioned(
            bottom: 120,
            child: SizedBox(
              height: 193,
              width: 193,
              child: FadedBackgroundIcon(
                iconPath: pokemon.types.isNotEmpty
                    ? AssetsConstants.getTypeIcon(pokemon.types.first.name)
                    : AssetsConstants.iconNormal,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: 250,
              width: 250,
              child: Image.network(
                pokemon.imageUrl,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
