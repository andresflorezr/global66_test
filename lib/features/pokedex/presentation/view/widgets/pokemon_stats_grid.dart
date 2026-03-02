import 'package:flutter/material.dart';
import 'package:global66_test/commons/constants/assets_constants.dart';
import 'package:global66_test/commons/extensions/string_extensions.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/presentation/view/widgets/pokemon_stat_card.dart';
import 'package:global66_test/l10n/app_localizations.dart';

class PokemonStatsGrid extends StatelessWidget {
  final PokemonDetail pokemon;

  const PokemonStatsGrid({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: PokemonStatCard(
                label: l10n.pokemonWeight,
                value:
                    '${(pokemon.weight / 10).toString().replaceAll('.', ',')} kg',
                iconPath: AssetsConstants.weightIcon,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: PokemonStatCard(
                label: l10n.pokemonHeight,
                value:
                    '${(pokemon.height / 10).toString().replaceAll('.', ',')} m',
                iconPath: AssetsConstants.height,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: PokemonStatCard(
                label: l10n.pokemonCategory,
                value: pokemon.category.toUpperCase(),
                iconPath: AssetsConstants.explore,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: PokemonStatCard(
                label: l10n.pokemonAbility,
                value: pokemon.abilities.isNotEmpty
                    ? pokemon.abilities.first.capitalize()
                    : 'N/A',
                iconPath: AssetsConstants.pokeball,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
