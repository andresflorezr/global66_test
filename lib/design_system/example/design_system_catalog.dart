import 'package:flutter/material.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/design_system/widgets/atoms/buttons/app_button.dart';
import 'package:global66_test/design_system/widgets/atoms/tag/app_tag.dart';
import 'package:global66_test/design_system/widgets/atoms/text/app_text.dart';
import 'package:global66_test/design_system/widgets/organisms/pokemon_card.dart';

import 'package:global66_test/features/pokedex/domain/entities/pokemon_detail.dart';

class DesignSystemCatalogPage extends StatelessWidget {
  const DesignSystemCatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Design System Catalog'),
        backgroundColor: AppColors.background,
        elevation: 0,
        foregroundColor: AppColors.textPrimary,
      ),
      backgroundColor: AppColors.background,
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: const [
          _SectionHeader(title: 'Typography'),
          _TypographySection(),
          SizedBox(height: 32),
          _SectionHeader(title: 'Buttons'),
          _ButtonsSection(),
          SizedBox(height: 32),
          _SectionHeader(title: 'Tags'),
          _TagsSection(),
          SizedBox(height: 32),
          _SectionHeader(title: 'Cards'),
          _CardsSection(),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;

  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.titleLarge(title, color: AppColors.primary),
        const Divider(),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _TypographySection extends StatelessWidget {
  const _TypographySection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.displayLarge('Display Large'),
        SizedBox(height: 8),
        AppText.titleLarge('Title Large'),
        SizedBox(height: 8),
        AppText.titleMedium('Title Medium'),
        SizedBox(height: 8),
        AppText.bodyLarge(
          'Body Large - The quick brown fox jumps over the lazy dog.',
        ),
        SizedBox(height: 8),
        AppText.bodyMedium(
          'Body Medium - The quick brown fox jumps over the lazy dog.',
        ),
        SizedBox(height: 8),
        AppText.labelLarge(
          'Label Large',
          color: Colors.black,
        ), // Overriding color for visibility
        SizedBox(height: 8),
        AppText.labelSmall(
          'Label Small',
          color: Colors.black,
        ), // Overriding color for visibility
        SizedBox(height: 8),
        AppText.caption('Caption Text'),
      ],
    );
  }
}

class _ButtonsSection extends StatelessWidget {
  const _ButtonsSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppText.titleMedium('Primary Buttons'),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            AppButton(
              text: 'Primary',
              onPressed: () {},
              variant: AppButtonVariant.primary,
              isFullWidth: false,
            ),
            AppButton(
              text: 'Loading',
              onPressed: () {},
              variant: AppButtonVariant.primary,
              isLoading: true,
              isFullWidth: false,
            ),
            const AppButton(
              text: 'Disabled',
              onPressed: null,
              variant: AppButtonVariant.primary,
              isFullWidth: false,
            ),
            AppButton(
              text: 'Icon',
              onPressed: () {},
              prefixIcon: Icons.add,
              variant: AppButtonVariant.primary,
              isFullWidth: false,
            ),
            AppButton(
              text: 'Both Icons',
              onPressed: () {},
              prefixIcon: Icons.bolt,
              suffixIcon: Icons.bolt,
              variant: AppButtonVariant.primary,
              isFullWidth: false,
            ),
          ],
        ),
        const SizedBox(height: 24),
        const AppText.titleMedium('Secondary Buttons'),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            AppButton(
              text: 'Secondary',
              onPressed: () {},
              variant: AppButtonVariant.secondary,
              isFullWidth: false,
            ),
            AppButton(
              text: 'Loading',
              onPressed: () {},
              variant: AppButtonVariant.secondary,
              isLoading: true,
              isFullWidth: false,
            ),
            const AppButton(
              text: 'Disabled',
              onPressed: null,
              variant: AppButtonVariant.secondary,
              isFullWidth: false,
            ),
            AppButton(
              text: 'Icon',
              onPressed: () {},
              prefixIcon: Icons.arrow_forward,
              variant: AppButtonVariant.secondary,
              isFullWidth: false,
            ),
            AppButton(
              text: 'Both Icons',
              onPressed: () {},
              prefixIcon: Icons.bolt,
              suffixIcon: Icons.bolt,
              variant: AppButtonVariant.secondary,
              isFullWidth: false,
            ),
          ],
        ),
        const SizedBox(height: 24),
        const AppText.titleMedium('Tertiary Buttons'),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            AppButton(
              text: 'Tertiary',
              onPressed: () {},
              variant: AppButtonVariant.tertiary,
              isFullWidth: false,
            ),
            AppButton(
              text: 'Loading',
              onPressed: () {},
              variant: AppButtonVariant.tertiary,
              isLoading: true,
              isFullWidth: false,
            ),
            const AppButton(
              text: 'Disabled',
              onPressed: null,
              variant: AppButtonVariant.tertiary,
              isFullWidth: false,
            ),
            AppButton(
              text: 'Both Icons',
              onPressed: () {},
              prefixIcon: Icons.bolt,
              suffixIcon: Icons.bolt,
              variant: AppButtonVariant.tertiary,
              isFullWidth: false,
            ),
          ],
        ),
        const SizedBox(height: 24),
        const AppText.titleMedium('Sizes'),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            AppButton(
              text: 'Small',
              onPressed: () {},
              size: AppButtonSize.small,
              isFullWidth: false,
            ),
            AppButton(
              text: 'Medium',
              onPressed: () {},
              size: AppButtonSize.medium,
              isFullWidth: false,
            ),
            AppButton(
              text: 'Large',
              onPressed: () {},
              size: AppButtonSize.large,
              isFullWidth: false,
            ),
          ],
        ),
      ],
    );
  }
}

class _TagsSection extends StatelessWidget {
  const _TagsSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            AppTag(text: 'Agua'),
            AppTag(text: 'Fuego'),
            AppTag(text: 'Planta'),
            AppTag(text: 'Eléctrico'),
            AppTag(text: 'Dragón'),
          ],
        ),
      ],
    );
  }
}

class _CardsSection extends StatelessWidget {
  const _CardsSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PokemonCard(
          id: 'N°001',
          name: 'Bulbasaur',
          types: const [
            PokemonType(name: 'Planta', url: ''),
            PokemonType(name: 'Veneno', url: ''),
          ],
          imageUrl:
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
          isFavorite: false,
          onTap: () {},
          onFavoriteTap: () {},
        ),
        const SizedBox(height: 16),
        PokemonCard(
          id: 'N°004',
          name: 'Charmander',
          types: const [
            PokemonType(name: 'Fuego', url: ''),
          ],
          imageUrl:
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png',
          isFavorite: true,
          onTap: () {},
          onFavoriteTap: () {},
        ),
      ],
    );
  }
}
