import 'package:hooks_riverpod/hooks_riverpod.dart';

enum TabStateType {
  one,
  charge,
  home,
  four,
  five,
}

final tabStateTypeProvider = StateProvider<TabStateType>(
  (ref) => TabStateType.home,
);
