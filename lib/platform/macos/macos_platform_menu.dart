import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' as io;
import 'package:get/get.dart';
import 'package:flutter/widgets.dart'
    show
        PlatformMenu,
        PlatformMenuItem,
        PlatformProvidedMenuItem,
        PlatformProvidedMenuItemType;

List<PlatformMenuItem> menuBarItems() {
  if (kIsWeb) {
    return [];
  } else {
    if (io.Platform.isMacOS) {
      return [
        PlatformMenu(
          label: 'appName'.tr,
          menus: [
            const PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.about,
            ),
            const PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.quit,
            ),
          ],
        ),
        PlatformMenu(
          label: 'view'.tr,
          menus: [
            const PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.toggleFullScreen,
            ),
          ],
        ),
        PlatformMenu(
          label: 'window'.tr,
          menus: [
            const PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.minimizeWindow,
            ),
            const PlatformProvidedMenuItem(
              type: PlatformProvidedMenuItemType.zoomWindow,
            ),
          ],
        ),
      ];
    } else {
      return [];
    }
  }
}
