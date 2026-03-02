import 'dart:ui';
import 'package:global66_test/design_system/theme/app_colors.dart';
import 'package:global66_test/commons/constants/assets_constants.dart';

enum PokemonType {
  water(AppColors.typeWater, AssetsConstants.iconWater, ['water', 'agua']),
  fire(AppColors.typeFire, AssetsConstants.iconFire, ['fire', 'fuego']),
  grass(AppColors.typeGrass, AssetsConstants.iconPlant, ['grass', 'planta']),
  electric(AppColors.typeElectric, AssetsConstants.iconElectric, ['electric', 'eléctrico']),
  dragon(AppColors.typeDragon, AssetsConstants.iconDragon, ['dragon', 'dragón']),
  bug(AppColors.typeBug, AssetsConstants.iconBug, ['bug', 'bicho']),
  dark(AppColors.typeDark, AssetsConstants.iconDark, ['dark', 'siniestro']),
  fairy(AppColors.typeFairy, AssetsConstants.iconFairy, ['fairy', 'hada']),
  fighting(AppColors.typeFighting, AssetsConstants.iconFighting, ['fighting', 'lucha']),
  flying(AppColors.typeFlying, AssetsConstants.iconFlying, ['flying', 'volador']),
  ghost(AppColors.typeGhost, AssetsConstants.iconGhost, ['ghost', 'fantasma']),
  ground(AppColors.typeGround, AssetsConstants.iconGround, ['ground', 'tierra']),
  ice(AppColors.typeIce, AssetsConstants.iconIce, ['ice', 'hielo']),
  normal(AppColors.typeNormal, AssetsConstants.iconNormal, ['normal']),
  poison(AppColors.typePoison, AssetsConstants.iconPoison, ['poison', 'veneno']),
  psychic(AppColors.typePsychic, AssetsConstants.iconPsychic, ['psychic', 'psiquico', 'psíquico']),
  rock(AppColors.typeRock, AssetsConstants.iconRock, ['rock', 'roca']),
  steel(AppColors.typeSteel, AssetsConstants.iconSteel, ['steel', 'acero']),
  unknown(AppColors.textSecondary, AssetsConstants.iconNormal, []);

  final Color color;
  final String iconPath;
  final List<String> keys;

  const PokemonType(this.color, this.iconPath, this.keys);

  static PokemonType fromString(String type) {
    return PokemonType.values.firstWhere(
      (e) => e.keys.contains(type.toLowerCase()),
      orElse: () => unknown,
    );
  }
}
