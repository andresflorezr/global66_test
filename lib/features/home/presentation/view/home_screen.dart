import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/design_system/theme/app_typography.dart';
import 'package:global66_test/features/error/error_construction_screen.dart';
import 'package:global66_test/features/pokedex/presentation/view/favorites_screen.dart';
import 'package:global66_test/features/pokedex/presentation/view/pokedex_screen.dart';
import 'package:global66_test/l10n/app_localizations.dart';
import 'package:global66_test/commons/constants/assets_constants.dart';
import 'package:global66_test/features/home/presentation/providers/home_navigation_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(homeNavigationProvider);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: currentIndex,
        children: [
          Navigator(
            key: const GlobalObjectKey<NavigatorState>('pokedexNavigator'),
            onGenerateRoute: (settings) {
              return MaterialPageRoute(
                builder: (_) => const PokedexScreen(),
              );
            },
          ),
          const ConstructionScreen(),
          const FavoritesScreen(),
          const ConstructionScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 2,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: BottomNavigationBar(
            iconSize: 16,
            currentIndex: currentIndex,
            onTap: (index) {
              ref.read(homeNavigationProvider.notifier).setIndex(index);
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: AppColors.selected,
            unselectedItemColor: AppColors.unnselected,
            selectedLabelStyle: AppTypography.itemSelected,
            unselectedLabelStyle: AppTypography.itemUnselected,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: _buildIcon(AssetsConstants.navHome, currentIndex == 0),
                label: l10n.navPokedex,
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(AssetsConstants.navRegion, currentIndex == 1),
                label: l10n.navRegions,
              ),
              BottomNavigationBarItem(
                icon:
                    _buildIcon(AssetsConstants.navFavorite, currentIndex == 2),
                label: l10n.navFavorites,
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(AssetsConstants.navProfile, currentIndex == 3),
                label: l10n.navProfile,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(String assetPath, bool isSelected) {
    return Column(
      children: [
        SvgPicture.asset(
          assetPath,
          colorFilter: ColorFilter.mode(
            isSelected ? AppColors.selected : AppColors.unnselected,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(height: 4),
      ],
    );
  }
}
