// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get onboardingTitle1 => 'All Pokémon in\none place';

  @override
  String get onboardingDesc1 =>
      'Access a wide list of Pokémon from all generations created by Nintendo';

  @override
  String get onboardingTitle2 => 'Keep your Pokédex\nupdated';

  @override
  String get onboardingDesc2 =>
      'Register and save your profile, favorite Pokémon, settings and much more in the application';

  @override
  String get btnContinue => 'Continue';

  @override
  String get btnLetsStart => 'Let\'s Start';

  @override
  String get navPokedex => 'Pokedex';

  @override
  String get navRegions => 'Regions';

  @override
  String get navFavorites => 'Favorites';

  @override
  String get navProfile => 'Profile';

  @override
  String get search => 'search';

  @override
  String get pokemonWeight => 'WEIGHT';

  @override
  String get pokemonHeight => 'HEIGHT';

  @override
  String get pokemonCategory => 'CATEGORY';

  @override
  String get pokemonAbility => 'ABILITY';

  @override
  String get pokemonGender => 'GENDER';

  @override
  String get pokemonNoGender => 'Genderless';

  @override
  String get pokemonWeaknesses => 'Weaknesses';

  @override
  String get errorTitle => 'Something went wrong…';

  @override
  String get errorDescription =>
      'We couldn’t load the information at this time. Please check your connection or try again later.';

  @override
  String get btnRetry => 'Retry';

  @override
  String get errorFavoriteTitle =>
      'You haven’t marked any Pokémon as favorite.';

  @override
  String get errorFavoriteDescription =>
      'Click on the heart icon of your favorite Pokémon and they will appear here.';

  @override
  String get errorConstructionTitle => 'Coming soon!';

  @override
  String get errorConstructionDescription =>
      'We\'re working to bring you this section. Please check back later to discover all the updates.';

  @override
  String get ups => 'Upsss';

  @override
  String get pokemonNotFound => 'The Pokémon you searched for does not exist';

  @override
  String get filterPreferences => 'Filter by your preferences';

  @override
  String get filterType => 'Type';

  @override
  String get btnApply => 'Apply';

  @override
  String get btnCancel => 'Cancel';

  @override
  String filterResults(int count) {
    return '$count results found';
  }

  @override
  String get filterClear => 'Clear filter';

  @override
  String get searchHint => 'Search Pokémon';
}
