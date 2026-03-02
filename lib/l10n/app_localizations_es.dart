// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get onboardingTitle1 => 'Todos los Pokémon en\nun solo lugar';

  @override
  String get onboardingDesc1 =>
      'Accede a una amplia lista de Pokémon de todas las generaciones creadas por Nintendo';

  @override
  String get onboardingTitle2 => 'Mantén tu Pokédex\nactualizada';

  @override
  String get onboardingDesc2 =>
      'Regístrate y guarda tu perfil, Pokémon favoritos, configuraciones y mucho más en la aplicación';

  @override
  String get btnContinue => 'Continuar';

  @override
  String get btnLetsStart => 'Empecemos';

  @override
  String get navPokedex => 'Pokedex';

  @override
  String get navRegions => 'Regiones';

  @override
  String get navFavorites => 'Favoritos';

  @override
  String get navProfile => 'Perfil';

  @override
  String get search => 'Buscar';

  @override
  String get pokemonWeight => 'PESO';

  @override
  String get pokemonHeight => 'ALTURA';

  @override
  String get pokemonCategory => 'CATEGORÍA';

  @override
  String get pokemonAbility => 'HABILIDAD';

  @override
  String get pokemonGender => 'GÉNERO';

  @override
  String get pokemonNoGender => 'Sin género';

  @override
  String get pokemonWeaknesses => 'Debilidades';

  @override
  String get errorTitle => 'Algo salió mal...';

  @override
  String get errorDescription =>
      'No pudimos cargar la información en este momento. Verifica tu conexión o intenta nuevamente más tarde.';

  @override
  String get btnRetry => 'Reintentar';

  @override
  String get errorFavoriteTitle =>
      'No has marcado ningún Pokémon como favorito';

  @override
  String get errorFavoriteDescription =>
      'Haz clic en el ícono de corazón de tus Pokémon favoritos y aparecerán aquí.';

  @override
  String get errorConstructionTitle => '¡Muy pronto disponible!';

  @override
  String get errorConstructionDescription =>
      'Estamos trabajando para traerte esta sección. Vuelve más adelante para descubrir todas las novedades.';

  @override
  String get ups => 'Upsss';

  @override
  String get pokemonNotFound => 'El pokemon que buscaste no existe';

  @override
  String get filterPreferences => 'Filtra por tus preferencias';

  @override
  String get filterType => 'Tipo';

  @override
  String get btnApply => 'Aplicar';

  @override
  String get btnCancel => 'Cancelar';

  @override
  String filterResults(int count) {
    return 'Se han encontrado $count resultados';
  }

  @override
  String get filterClear => 'Borrar filtro';

  @override
  String get searchHint => 'Buscar Pokémon';
}
