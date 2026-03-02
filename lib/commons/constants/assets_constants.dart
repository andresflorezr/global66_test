import 'package:global66_test/features/pokedex/domain/enums/pokemon_type_enum.dart';

class AssetsConstants {
  // SVG Icons
  static const String _basePathSvg = 'assets/svg';
  static const String _basePathPng = 'assets/png';

  static const String iconWater = '$_basePathSvg/water.svg';
  static const String iconFire = '$_basePathSvg/fire.svg';
  static const String iconGrass = '$_basePathSvg/grass.svg';
  static const String iconElectric = '$_basePathSvg/electric.svg';
  static const String iconDragon = '$_basePathSvg/dragon.svg';
  static const String iconBug = '$_basePathSvg/bug.svg';
  static const String iconDark = '$_basePathSvg/dark.svg';
  static const String iconFairy = '$_basePathSvg/fairy.svg';
  static const String iconFighting = '$_basePathSvg/fighting.svg';
  static const String iconFlying = '$_basePathSvg/flying.svg';
  static const String iconGhost = '$_basePathSvg/ghost.svg';
  static const String iconGround = '$_basePathSvg/ground.svg';
  static const String iconFavoriteOutline = '$_basePathSvg/favorite_no.svg';
  static const String iconFavoriteFilled = '$_basePathSvg/favorite_yes.svg';
  static const String heartSolid = '$_basePathSvg/heart_solid.svg';
  static const String iconHeart = '$_basePathSvg/heart.svg';
  static const String iconHeartFilled = '$_basePathSvg/heart_solid.svg';
  static const String iconIce = '$_basePathSvg/ice.svg';
  static const String iconNormal = '$_basePathSvg/normal.svg';
  static const String iconPoison = '$_basePathSvg/poison.svg';
  static const String iconPsychic = '$_basePathSvg/psychic.svg';
  static const String iconRock = '$_basePathSvg/rock.svg';
  static const String iconSteel = '$_basePathSvg/steel.svg';
  static const String iconPlant = '$_basePathSvg/plant.svg';
  static const String splashImage = '$_basePathSvg/splash_image.svg';
  static const String navHome = '$_basePathSvg/homeItem.svg';
  static const String navRegion = '$_basePathSvg/regionItem.svg';
  static const String navFavorite = '$_basePathSvg/favoriteItem.svg';
  static const String navProfile = '$_basePathSvg/perfilItem.svg';
  static const String explore = '$_basePathSvg/explore.svg';
  static const String height = '$_basePathSvg/height.svg';
  static const String onboarding1 = '$_basePathSvg/onboarding_1.svg';
  static const String onboarding2 = '$_basePathSvg/onboarding_2.svg';
  static const String pokeball = '$_basePathSvg/pokeball.svg';
  static const String weightIcon = '$_basePathSvg/weight.svg';
  static const String searchIcon = '$_basePathSvg/search.svg';
  static const String trashIcon = '$_basePathSvg/trash.svg';
  // PNG Images
  static const String onboarding01 = '$_basePathPng/onboarding_01.png';
  static const String onboarding02 = '$_basePathPng/onboarding_02.png';
  static const String pokedexConstruction =
      '$_basePathPng/pokedex_construction.png';
  static const String pokedexError = '$_basePathPng/pokedex_error.png';

  // Helper to get icon by type name (supports English and Spanish)
  static String getTypeIcon(String type) {
    return PokemonType.fromString(type).iconPath;
  }
}
