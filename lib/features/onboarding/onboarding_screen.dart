import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/design_system/widgets/atoms/buttons/app_button.dart';
import 'package:global66_test/design_system/widgets/atoms/text/app_text.dart';
import 'package:global66_test/l10n/app_localizations.dart';
import 'package:global66_test/commons/constants/assets_constants.dart';
import 'package:global66_test/features/home/presentation/view/home_screen.dart';
import 'package:global66_test/commons/local_storage/shared_preferences_provider.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_currentPage < 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Save onboarding completed state
      ref.read(sharedPreferencesProvider).setBool('onboarding_completed', true);

      // Navigate to Home or Catalog
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  OnboardingContent(
                    imagePath: AssetsConstants.onboarding01,
                    title: l10n.onboardingTitle1,
                    description: l10n.onboardingDesc1,
                  ),
                  OnboardingContent(
                    imagePath: AssetsConstants.onboarding02,
                    title: l10n.onboardingTitle2,
                    description: l10n.onboardingDesc2,
                  ),
                ],
              ),
            ),

            // Pagination Dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(2, (index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  height: 8,
                  width:
                      _currentPage == index ? 24 : 8, // Elongated when active
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? AppColors.selected
                        : AppColors.blueOnboard.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(4), // Rounded corners
                  ),
                );
              }),
            ),

            const SizedBox(height: 32),

            // Action Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: AppButton(
                text: _currentPage == 0 ? l10n.btnContinue : l10n.btnLetsStart,
                onPressed: _nextPage,
                variant: AppButtonVariant.primary,
                size: AppButtonSize.large, // Large button as per design
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const OnboardingContent({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset(
            imagePath,
            height: 280,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) => const SizedBox(
              height: 280,
              child: Center(child: Icon(Icons.broken_image, size: 50)),
            ),
          ),
          const SizedBox(height: 48),
          AppText.onboardingTitle(
            title,
            textAlign: TextAlign.center,
            color: Colors.black,
          ),
          const SizedBox(height: 16),
          AppText.bodyMedium(
            description,
            textAlign: TextAlign.center,
            color: AppColors.textSecondary,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
