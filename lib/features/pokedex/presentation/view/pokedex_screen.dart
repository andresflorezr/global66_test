import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/commons/constants/assets_constants.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/features/pokedex/presentation/view/widgets/custom_search_bar.dart';
import 'package:global66_test/design_system/widgets/atoms/loaders/wave_dots_loader.dart';
import 'package:global66_test/design_system/widgets/atoms/text/app_text.dart';
import 'package:global66_test/design_system/widgets/organisms/pokemon_card.dart';
import 'package:global66_test/features/pokedex/presentation/view/widgets/pokemon_filter_button.dart';
import 'package:global66_test/features/widgets/template_screen_widget.dart';
import 'package:global66_test/features/pokedex/presentation/controllers/pokedex_list_controller.dart';
import 'package:global66_test/features/pokedex/domain/use_cases/get_pokemon_detail_use_case.dart';
import 'package:global66_test/commons/extensions/string_extensions.dart';
import 'package:global66_test/l10n/app_localizations.dart';
import 'package:global66_test/features/pokedex/presentation/view/pokemon_detail_screen.dart';

class PokedexScreen extends ConsumerStatefulWidget {
  const PokedexScreen({super.key});

  @override
  ConsumerState<PokedexScreen> createState() => _PokedexScreenState();
}

class _PokedexScreenState extends ConsumerState<PokedexScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;
  bool _isLocalLoading = false;
  String? _selectedTypeFilter;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(pokedexListControllerProvider.notifier).loadInitialPokemons();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    _debounce = Timer(const Duration(seconds: 1), () async {
      // Set local loading state immediately for UI feedback
      if (query.isNotEmpty) {
        setState(() {
          _isLocalLoading = true;
        });
      }

      await ref
          .read(pokedexListControllerProvider.notifier)
          .searchPokemon(query);
      if (mounted) {
        setState(() {
          _isLocalLoading = false;
        });
      }
    });
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(pokedexListControllerProvider.notifier).loadMorePokemons();
    }
  }

  @override
  Widget build(BuildContext context) {
    final pokedexState = ref.watch(pokedexListControllerProvider);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: pokedexState.asyncPokemons.when(
                data: (pokemons) {
                  // Extract available types from current pokemon list
                  final availableTypes = pokemons
                      .expand((p) => p.types)
                      .map((t) => t.name.capitalize())
                      .toSet()
                      .toList()
                    ..sort();

                  // Filter pokemons if a type is selected
                  final filteredPokemons = _selectedTypeFilter == null
                      ? pokemons
                      : pokemons.where((p) {
                          return p.types.any((t) =>
                              t.name.toLowerCase() ==
                              _selectedTypeFilter!.toLowerCase());
                        }).toList();

                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 4),
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomSearchBar(
                                controller: _searchController,
                                onChanged: _onSearchChanged,
                              ),
                            ),
                            const SizedBox(width: 11),
                            PokemonFilterButton(
                              availableTypes: availableTypes,
                              selectedTypeFilter: _selectedTypeFilter,
                              onApply: (selectedType) {
                                setState(() {
                                  _selectedTypeFilter = selectedType;
                                });
                                _scrollController.jumpTo(0);
                              },
                            ),
                          ],
                        ),
                      ),
                      if (_selectedTypeFilter != null)
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppText.bodyMedium(
                                l10n.filterResults(filteredPokemons.length),
                                color: AppColors.textSecondary,
                              ),
                              const SizedBox(width: 8),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedTypeFilter = null;
                                  });
                                },
                                child: AppText.bodyMedium(
                                  l10n.filterClear,
                                  color: AppColors.primary,
                                  textDecoration: TextDecoration.underline,
                                  decorationColor: AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      Expanded(
                        child: Stack(
                          children: [
                            ListView.separated(
                              controller: _scrollController,
                              padding: const EdgeInsets.all(16),
                              itemCount: filteredPokemons.isEmpty
                                  ? 1
                                  : filteredPokemons.length +
                                      (pokedexState.isLoadingMore ? 1 : 0),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 12),
                              itemBuilder: (context, index) {
                                if (filteredPokemons.isEmpty) {
                                  return SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.6,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TemplateScreenWidget(
                                            imagePath:
                                                AssetsConstants.pokedexError,
                                            title: l10n.ups,
                                            description: l10n.pokemonNotFound,
                                            buttonText: l10n.btnRetry,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }

                                // Show loader at the bottom
                                if (index == filteredPokemons.length) {
                                  return const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: WaveDotsLoader(
                                          color: AppColors.primary),
                                    ),
                                  );
                                }

                                final pokemon = filteredPokemons[index];
                                // Format ID to #001
                                final formattedId =
                                    'Nº${pokemon.id.toString().padLeft(3, '0')}';

                                // Use imageUrl from entity
                                final imageUrl = pokemon.imageUrl;

                                return PokemonCard(
                                    id: formattedId,
                                    name: pokemon.name.capitalize(),
                                    types: pokemon.types,
                                    imageUrl: imageUrl,
                                    isFavorite: pokemon.isFavorite,
                                    onFavoriteTap: () {
                                      ref
                                          .read(pokedexListControllerProvider
                                              .notifier)
                                          .toggleFavorite(pokemon);
                                    },
                                    onTap: () {
                                      // Navigate to detail screen immediately with Future
                                      final detailFuture = ref
                                          .read(getPokemonDetailUseCaseProvider)
                                          .call(pokemon.name);

                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PokemonDetailScreen(
                                            pokemonFuture: detailFuture,
                                            pokemonSummary: pokemon,
                                          ),
                                        ),
                                      );
                                    });
                              },
                            ),
                            if (_isLocalLoading ||
                                (pokedexState.asyncPokemons.isLoading &&
                                    pokedexState.isSearching))
                              Container(
                                color: AppColors.background.withOpacity(0.5),
                                child: const Center(
                                  child: CircularProgressIndicator(
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                loading: () => const Center(
                    child: WaveDotsLoader(color: AppColors.primary)),
                error: (error, stack) => TemplateScreenWidget(
                  imagePath: AssetsConstants.pokedexError,
                  title: l10n.errorTitle,
                  description: l10n.errorDescription,
                  buttonText: l10n.btnRetry,
                  onButtonPressed: () {
                    ref.invalidate(pokedexListControllerProvider);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
