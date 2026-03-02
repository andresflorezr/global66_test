import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es')
  ];

  /// No description provided for @onboardingTitle1.
  ///
  /// In es, this message translates to:
  /// **'Todos los Pokémon en\nun solo lugar'**
  String get onboardingTitle1;

  /// No description provided for @onboardingDesc1.
  ///
  /// In es, this message translates to:
  /// **'Accede a una amplia lista de Pokémon de todas las generaciones creadas por Nintendo'**
  String get onboardingDesc1;

  /// No description provided for @onboardingTitle2.
  ///
  /// In es, this message translates to:
  /// **'Mantén tu Pokédex\nactualizada'**
  String get onboardingTitle2;

  /// No description provided for @onboardingDesc2.
  ///
  /// In es, this message translates to:
  /// **'Regístrate y guarda tu perfil, Pokémon favoritos, configuraciones y mucho más en la aplicación'**
  String get onboardingDesc2;

  /// No description provided for @btnContinue.
  ///
  /// In es, this message translates to:
  /// **'Continuar'**
  String get btnContinue;

  /// No description provided for @btnLetsStart.
  ///
  /// In es, this message translates to:
  /// **'Empecemos'**
  String get btnLetsStart;

  /// No description provided for @navPokedex.
  ///
  /// In es, this message translates to:
  /// **'Pokedex'**
  String get navPokedex;

  /// No description provided for @navRegions.
  ///
  /// In es, this message translates to:
  /// **'Regiones'**
  String get navRegions;

  /// No description provided for @navFavorites.
  ///
  /// In es, this message translates to:
  /// **'Favoritos'**
  String get navFavorites;

  /// No description provided for @navProfile.
  ///
  /// In es, this message translates to:
  /// **'Perfil'**
  String get navProfile;

  /// No description provided for @search.
  ///
  /// In es, this message translates to:
  /// **'Buscar'**
  String get search;

  /// No description provided for @pokemonWeight.
  ///
  /// In es, this message translates to:
  /// **'PESO'**
  String get pokemonWeight;

  /// No description provided for @pokemonHeight.
  ///
  /// In es, this message translates to:
  /// **'ALTURA'**
  String get pokemonHeight;

  /// No description provided for @pokemonCategory.
  ///
  /// In es, this message translates to:
  /// **'CATEGORÍA'**
  String get pokemonCategory;

  /// No description provided for @pokemonAbility.
  ///
  /// In es, this message translates to:
  /// **'HABILIDAD'**
  String get pokemonAbility;

  /// No description provided for @pokemonGender.
  ///
  /// In es, this message translates to:
  /// **'GÉNERO'**
  String get pokemonGender;

  /// No description provided for @pokemonNoGender.
  ///
  /// In es, this message translates to:
  /// **'Sin género'**
  String get pokemonNoGender;

  /// No description provided for @pokemonWeaknesses.
  ///
  /// In es, this message translates to:
  /// **'Debilidades'**
  String get pokemonWeaknesses;

  /// No description provided for @errorTitle.
  ///
  /// In es, this message translates to:
  /// **'Algo salió mal...'**
  String get errorTitle;

  /// No description provided for @errorDescription.
  ///
  /// In es, this message translates to:
  /// **'No pudimos cargar la información en este momento. Verifica tu conexión o intenta nuevamente más tarde.'**
  String get errorDescription;

  /// No description provided for @btnRetry.
  ///
  /// In es, this message translates to:
  /// **'Reintentar'**
  String get btnRetry;

  /// No description provided for @errorFavoriteTitle.
  ///
  /// In es, this message translates to:
  /// **'No has marcado ningún Pokémon como favorito'**
  String get errorFavoriteTitle;

  /// No description provided for @errorFavoriteDescription.
  ///
  /// In es, this message translates to:
  /// **'Haz clic en el ícono de corazón de tus Pokémon favoritos y aparecerán aquí.'**
  String get errorFavoriteDescription;

  /// No description provided for @errorConstructionTitle.
  ///
  /// In es, this message translates to:
  /// **'¡Muy pronto disponible!'**
  String get errorConstructionTitle;

  /// No description provided for @errorConstructionDescription.
  ///
  /// In es, this message translates to:
  /// **'Estamos trabajando para traerte esta sección. Vuelve más adelante para descubrir todas las novedades.'**
  String get errorConstructionDescription;

  /// No description provided for @ups.
  ///
  /// In es, this message translates to:
  /// **'Upsss'**
  String get ups;

  /// No description provided for @pokemonNotFound.
  ///
  /// In es, this message translates to:
  /// **'El pokemon que buscaste no existe'**
  String get pokemonNotFound;

  /// No description provided for @filterPreferences.
  ///
  /// In es, this message translates to:
  /// **'Filtra por tus preferencias'**
  String get filterPreferences;

  /// No description provided for @filterType.
  ///
  /// In es, this message translates to:
  /// **'Tipo'**
  String get filterType;

  /// No description provided for @btnApply.
  ///
  /// In es, this message translates to:
  /// **'Aplicar'**
  String get btnApply;

  /// No description provided for @btnCancel.
  ///
  /// In es, this message translates to:
  /// **'Cancelar'**
  String get btnCancel;

  /// No description provided for @filterResults.
  ///
  /// In es, this message translates to:
  /// **'Se han encontrado {count} resultados'**
  String filterResults(int count);

  /// No description provided for @filterClear.
  ///
  /// In es, this message translates to:
  /// **'Borrar filtro'**
  String get filterClear;

  /// No description provided for @searchHint.
  ///
  /// In es, this message translates to:
  /// **'Buscar Pokémon'**
  String get searchHint;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
