import 'package:flutter/material.dart';
import 'package:global66_test/commons/constants/assets_constants.dart';
import 'package:global66_test/features/widgets/template_screen_widget.dart';
import 'package:global66_test/l10n/app_localizations.dart';

class ConstructionScreen extends StatelessWidget {
  const ConstructionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return TemplateScreenWidget(
      imagePath: AssetsConstants.pokedexConstruction,
      title: l10n.errorConstructionTitle,
      description: l10n.errorConstructionDescription,
    );
  }
}
