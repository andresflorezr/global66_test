import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_navigation_provider.g.dart';

@riverpod
class HomeNavigation extends _$HomeNavigation {
  @override
  int build() => 0;

  void setIndex(int index) {
    state = index;
  }
}
