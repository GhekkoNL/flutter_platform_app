import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

enum ScreenSelected {
  screen1(0),
  screen2(1),
  screen3(2),
  screen4(3);

  const ScreenSelected(this.value);
  final int value;
}
 List<NavigationDestination> appDestinations = [
  NavigationDestination(
    tooltip: '',
    icon: const Icon(LineIcons.home, size: 22),
    label: 'menuScreen1'.tr,
    selectedIcon: const Icon(LineIcons.home, size: 22),
  ),
  NavigationDestination(
    tooltip: '',
    icon: const Icon(LineIcons.gem, size: 24),
    label: 'menuScreen2'.tr,
    selectedIcon: const Icon(LineIcons.gem, size: 24),
  ),
  NavigationDestination(
    tooltip: '',
    icon: const Icon(LineIcons.userFriends, size: 22),
    label: 'menuScreen3'.tr,
    selectedIcon: const Icon(LineIcons.userFriends, size: 22),
  ),
  NavigationDestination(
    tooltip: '',
    icon: const Icon(LineIcons.stream, size: 22),
    label: 'menuScreen4'.tr,
    selectedIcon: const Icon(LineIcons.stream, size: 22),
  )
];

final List<NavigationRailDestination> navRailDestinations = appDestinations
    .map(
      (destination) => NavigationRailDestination(
    icon: Tooltip(
      message: destination.label,
      child: destination.icon,
    ),
    selectedIcon: Tooltip(
      message: destination.label,
      child: destination.selectedIcon,
    ),
    label: Text(destination.label),
  ),
).toList();
