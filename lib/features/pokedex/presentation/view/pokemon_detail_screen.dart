import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:global66_test/commons/constants/assets_constants.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/design_system/widgets/atoms/tag/app_tag.dart';
import 'package:global66_test/design_system/widgets/atoms/text/app_text.dart';
import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';
import 'package:global66_test/features/pokedex/presentation/controllers/pokemon_detail_controller.dart';
import 'package:global66_test/commons/extensions/string_extensions.dart';
import 'package:global66_test/features/pokedex/presentation/view/widgets/pokemon_gender_chart.dart';
import 'package:global66_test/features/pokedex/presentation/view/widgets/pokemon_header.dart';
import 'package:global66_test/features/pokedex/presentation/view/widgets/pokemon_stats_grid.dart';

import 'package:global66_test/design_system/widgets/atoms/loaders/wave_dots_loader.dart';
import 'package:global66_test/l10n/app_localizations.dart';

class PokemonDetailScreen extends ConsumerStatefulWidget {
  final Future<PokemonDetail>? pokemonFuture;
  final PokemonDetail? pokemonSummary;

  const PokemonDetailScreen({
    super.key,
    this.pokemonFuture,
    this.pokemonSummary,
  });

  @override
  ConsumerState<PokemonDetailScreen> createState() =>
      _PokemonDetailScreenState();
}

class _PokemonDetailScreenState extends ConsumerState<PokemonDetailScreen> {
  @override
  void initState() {
    super.initState();
    final controller = ref.read(pokemonDetailControllerProvider.notifier);

    // Initialize controller with pokemonSummary if available
    if (widget.pokemonSummary != null) {
      // Use addPostFrameCallback to avoid potential build phase issues
      WidgetsBinding.instance.addPostFrameCallback((_) {
        controller.setPokemon(widget.pokemonSummary!);
      });
    }

    // Handle future if provided
    if (widget.pokemonFuture != null) {
      widget.pokemonFuture!.then((data) {
        if (mounted) {
          controller.updateDetails(data);
        }
      }).catchError((error) {
        // Handle error gracefully
        debugPrint('Error loading pokemon details: $error');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final pokemon = ref.watch(pokemonDetailControllerProvider);

    if (pokemon == null) {
      return const Scaffold(
        backgroundColor: AppColors.background,
        body: Center(
          child: WaveDotsLoader(color: AppColors.primary),
        ),
      );
    }

    return const _PokemonDetailContent();
  }
}

class _PokemonDetailContent extends ConsumerWidget {
  const _PokemonDetailContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemon = ref.watch(pokemonDetailControllerProvider);
    final l10n = AppLocalizations.of(context)!;

    if (pokemon == null) return const SizedBox.shrink();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: SafeArea(
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios,
                    color: AppColors.textWhite),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: IconButton(
                  icon: SvgPicture.asset(
                    pokemon.isFavorite
                        ? AssetsConstants.iconHeartFilled
                        : AssetsConstants.iconHeart,
                    width: 28,
                    height: 28,
                    colorFilter: ColorFilter.mode(
                      pokemon.isFavorite
                          ? AppColors.redHeart
                          : AppColors.textWhite,
                      BlendMode.srcIn,
                    ),
                  ),
                  onPressed: () {
                    ref
                        .read(pokemonDetailControllerProvider.notifier)
                        .toggleFavorite();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                PokemonHeader(pokemon: pokemon),

                // Info Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Name and ID
                      AppText.displayTitle(
                        pokemon.name.capitalize(),
                        color: AppColors.textPrimary,
                      ),
                      const SizedBox(height: 4),
                      AppText.labelLarge(
                        'Nº${pokemon.id.toString().padLeft(3, '0')}',
                        color: AppColors.textSecondary,
                      ),
                      const SizedBox(height: 16),

                      // Types
                      Wrap(
                        spacing: 8,
                        children: pokemon.types
                            .map((type) => AppTag(text: type.name))
                            .toList(),
                      ),
                      const SizedBox(height: 24),

                      // Description
                      AppText.bodyMedium(
                        pokemon.description,
                        color: AppColors.textTertiary,
                      ),
                      const SizedBox(height: 24),
                      const Divider(height: 1),
                      const SizedBox(height: 24),

                      // Stats Grid
                      PokemonStatsGrid(pokemon: pokemon),
                      const SizedBox(height: 32),

                      // Gender Section
                      PokemonGenderChart(pokemon: pokemon),
                      const SizedBox(height: 32),

                      // Weaknesses
                      if (pokemon.weaknesses.isNotEmpty) ...[
                        AppText.titleLarge(
                          l10n.pokemonWeaknesses,
                          color: AppColors.textPrimary,
                        ),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: pokemon.weaknesses
                              .map((type) => AppTag(text: type))
                              .toList(),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
