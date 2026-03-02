import 'package:flutter/material.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/design_system/widgets/atoms/buttons/app_button.dart';
import 'package:global66_test/design_system/widgets/atoms/text/app_text.dart';
import 'package:global66_test/l10n/app_localizations.dart';

class FilterBottomSheet extends StatefulWidget {
  final List<String> availableTypes;
  final Function(String?) onApply;
  final String? selectedType;

  const FilterBottomSheet({
    super.key,
    required this.availableTypes,
    required this.onApply,
    this.selectedType,
  });

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  late List<String> _types;
  String? _selectedType;
  bool _isTypeExpanded = true;

  @override
  void initState() {
    super.initState();
    _types = widget.availableTypes;
    _selectedType = widget.selectedType;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
      decoration: const BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.85,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
              Expanded(
                child: Center(
                  child: AppText.titleLarge(
                    l10n.filterPreferences,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(width: 48), // Spacer to balance close button
            ],
          ),
          const SizedBox(height: 24),

          // Content
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Type Section Header
                  InkWell(
                    onTap: () {
                      setState(() {
                        _isTypeExpanded = !_isTypeExpanded;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText.titleMedium(
                            l10n.filterType,
                            color: AppColors.textPrimary,
                          ),
                          Icon(_isTypeExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                  ),
                  if (_isTypeExpanded) ...[
                    const Divider(),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _types.length,
                      itemBuilder: (context, index) {
                        return _buildTypeOption(_types[index]);
                      },
                    ),
                  ],
                ],
              ),
            ),
          ),
          const Divider(),
          const SizedBox(height: 24),

          // Actions
          SizedBox(
            width: double.infinity,
            child: AppButton(
              text: l10n.btnApply,
              onPressed: () {
                widget.onApply(_selectedType);
                Navigator.pop(context);
              },
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: AppButton(
              text: l10n.btnCancel,
              variant: AppButtonVariant.secondary,
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTypeOption(String type) {
    final isSelected = _selectedType?.toLowerCase() == type.toLowerCase();

    return InkWell(
      onTap: () {
        setState(() {
          if (isSelected) {
            _selectedType = null;
          } else {
            _selectedType = type;
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText.bodyMedium(
              type,
              color: AppColors.textPrimary,
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.selected : AppColors.background,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: isSelected ? AppColors.selected : AppColors.greyLight,
                ),
              ),
              child: isSelected
                  ? const Icon(Icons.check,
                      size: 16, color: AppColors.textWhite)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
