import 'package:flutter/material.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/design_system/widgets/atoms/text/app_text.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/l10n/app_localizations.dart';

class PokemonGenderChart extends StatelessWidget {
  final PokemonDetail pokemon;

  const PokemonGenderChart({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    if (pokemon.genderRate == -1) {
      return Center(
        child: AppText.bodyMedium(l10n.pokemonNoGender,
            color: AppColors.textSecondary),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.labelLarge(
          l10n.pokemonGender,
          color: AppColors.textSecondary,
        ),
        const SizedBox(height: 12),
        Container(
          height: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            gradient: LinearGradient(
              colors: const [AppColors.selected, AppColors.pink],
              stops: [
                1 - (pokemon.genderRate / 8),
                1 - (pokemon.genderRate / 8)
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.male,
                    size: 16, color: AppColors.textSecondary),
                const SizedBox(width: 4),
                AppText.bodyMedium(
                    '${((8 - pokemon.genderRate) / 8 * 100).toStringAsFixed(1)}%'),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.female,
                    size: 16, color: AppColors.textSecondary),
                const SizedBox(width: 4),
                AppText.bodyMedium(
                    '${(pokemon.genderRate / 8 * 100).toStringAsFixed(1)}%'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
