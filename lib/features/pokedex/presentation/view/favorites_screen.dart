import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/commons/constants/assets_constants.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/design_system/widgets/atoms/loaders/wave_dots_loader.dart';
import 'package:global66_test/design_system/widgets/atoms/text/app_text.dart';
import 'package:global66_test/features/pokedex/presentation/view/widgets/favorite_pokemon_item.dart';
import 'package:global66_test/features/widgets/template_screen_widget.dart';
import 'package:global66_test/features/pokedex/presentation/controllers/favorites_controller.dart';
import 'package:global66_test/l10n/app_localizations.dart';

class FavoritesScreen extends ConsumerStatefulWidget {
  const FavoritesScreen({super.key});

  @override
  ConsumerState<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends ConsumerState<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    final favoritesState = ref.watch(favoritesControllerProvider);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: AppText.titleLarge(
          l10n.navFavorites,
          color: AppColors.textPrimary,
        ),
        centerTitle: true,
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
      body: favoritesState.when(
          data: (pokemons) {
            if (pokemons.isEmpty) {
              return TemplateScreenWidget(
                imagePath: AssetsConstants.pokedexError,
                title: l10n.errorFavoriteTitle,
                description: l10n.errorFavoriteDescription,
              );
            }

            return ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: pokemons.length,
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final pokemon = pokemons[index];
                return FavoritePokemonItem(pokemon: pokemon);
              },
            );
          },
          loading: () => const Center(
                child: WaveDotsLoader(color: AppColors.primary),
              ),
          error: (error, stack) => TemplateScreenWidget(
                imagePath: AssetsConstants.pokedexError,
                title: l10n.errorFavoriteTitle,
                description: l10n.errorFavoriteDescription,
              )),
    );
  }
}
