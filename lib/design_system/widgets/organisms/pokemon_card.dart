import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/design_system/widgets/atoms/tag/app_tag.dart';
import 'package:global66_test/design_system/widgets/atoms/text/app_text.dart';
import 'package:global66_test/design_system/widgets/atoms/icon/faded_background_icon.dart';
import 'package:global66_test/commons/constants/assets_constants.dart';

import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';

class PokemonCard extends StatelessWidget {
  final String id;
  final String name;
  final List<PokemonType> types;
  final String imageUrl;
  final bool isFavorite;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;

  const PokemonCard({
    super.key,
    required this.id,
    required this.name,
    required this.types,
    required this.imageUrl,
    this.isFavorite = false,
    this.onTap,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    // Determine background color from the first type
    final backgroundColor = types.isNotEmpty
        ? AppColors.getTypeColor(types.first.name)
        : AppColors.textSecondary; // Default fallback

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 102,
        decoration: BoxDecoration(
          color: backgroundColor.withOpacity(
            0.5,
          ), // Lighter background for the whole card
          borderRadius: BorderRadius.circular(20),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            // Left Column: Info
            Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 12,
                  bottom: 12,
                  left: 16,
                  right: 22,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText.labelLarge(
                      id,
                      color: AppColors.textPrimary.withOpacity(0.6),
                    ),
                    AppText.displayLarge(name, color: AppColors.textPrimary),
                    const SizedBox(height: 4),
                    // Tags Row
                    Wrap(
                      spacing: 2,
                      children: types.map((type) {
                        return AppTag(
                          text: type.name,
                          // color and icon are automatically resolved by AppTag
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),

            // Right Column: Image & Decorative Background
            Expanded(
              flex: 5,
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: backgroundColor, // Normal color for the right section
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    FadedBackgroundIcon(
                      iconPath: types.isNotEmpty
                          ? AssetsConstants.getTypeIcon(types.first.name)
                          : AssetsConstants.iconNormal,
                      size: 94,
                    ),

                    // // Pokemon Image
                    Positioned(
                      child: Image.network(
                        imageUrl,
                        height: 94,
                        width: 94,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.image_not_supported,
                            color: Colors.white54,
                            size: 40,
                          );
                        },
                      ),
                    ),

                    // Favorite Button
                    Positioned(
                      top: 8,
                      right: 8,
                      child: GestureDetector(
                        onTap: onFavoriteTap,
                        child: SvgPicture.asset(
                          isFavorite
                              ? AssetsConstants.iconFavoriteFilled
                              : AssetsConstants.iconFavoriteOutline,
                          width: 32,
                          height: 32,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
