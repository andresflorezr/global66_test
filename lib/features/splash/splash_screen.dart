import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/commons/constants/assets_constants.dart';
import 'package:global66_test/features/onboarding/onboarding_screen.dart';
import 'package:global66_test/features/home/presentation/view/home_screen.dart';
import 'package:global66_test/commons/local_storage/shared_preferences_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to next screen after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        final prefs = ref.read(sharedPreferencesProvider);
        final bool onboardingCompleted = prefs.getBool('onboarding_completed') ?? false;

        if (onboardingCompleted) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        } else {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const OnboardingScreen()),
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background, // Using brand primary color
      body: Center(
        child: SvgPicture.asset(
          AssetsConstants.splashImage,
          width: 150, // Adjust size as needed
          height: 150,
        ),
      ),
    );
  }
}
