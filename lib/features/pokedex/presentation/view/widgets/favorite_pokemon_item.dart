import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:global66_test/commons/constants/assets_constants.dart';
import 'package:global66_test/commons/extensions/string_extensions.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/design_system/widgets/organisms/pokemon_card.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/presentation/controllers/favorites_controller.dart';
import 'package:global66_test/features/pokedex/presentation/view/pokemon_detail_screen.dart';

class FavoritePokemonItem extends ConsumerWidget {
  final PokemonDetail pokemon;

  const FavoritePokemonItem({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formattedId = 'Nº${pokemon.id.toString().padLeft(3, '0')}';

    return Dismissible(
      key: Key(pokemon.id.toString()),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        ref
            .read(favoritesControllerProvider.notifier)
            .removeFavorite(pokemon);
      },
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 32),
        decoration: const BoxDecoration(
          color: AppColors.redTrash,
        ),
        child: SvgPicture.asset(
          AssetsConstants.trashIcon,
          width: 38,
          height: 38,
          colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
      child: PokemonCard(
        id: formattedId,
        name: pokemon.name.capitalize(),
        types: pokemon.types,
        imageUrl: pokemon.imageUrl,
        isFavorite: true, // Always true in favorites screen
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PokemonDetailScreen(
                pokemonSummary: pokemon,
                pokemonFuture: Future.value(pokemon),
              ),
            ),
          );
        },
      ),
    );
  }
}
