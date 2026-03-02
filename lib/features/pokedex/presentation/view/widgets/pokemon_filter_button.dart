import 'package:flutter/material.dart';
import 'package:global66_test/features/pokedex/presentation/view/widgets/app_circular_button_search.dart';
import 'package:global66_test/features/pokedex/presentation/view/widgets/filter_bottom_sheet.dart';

class PokemonFilterButton extends StatelessWidget {
  final List<String> availableTypes;
  final String? selectedTypeFilter;
  final ValueChanged<String?> onApply;

  const PokemonFilterButton({
    super.key,
    required this.availableTypes,
    required this.selectedTypeFilter,
    required this.onApply,
  });

  @override
  Widget build(BuildContext context) {
    return AppCircularButtonSearch(
      icon: Icons.tune,
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (context) => FilterBottomSheet(
            availableTypes: availableTypes,
            selectedType: selectedTypeFilter,
            onApply: onApply,
          ),
        );
      },
    );
  }
}
