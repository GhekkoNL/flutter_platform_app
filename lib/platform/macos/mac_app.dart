import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:macos_ui/macos_ui.dart';
import 'mac_screens/mac_screen1.dart';
import 'mac_screens/mac_screen2.dart';
import 'mac_screens/mac_screen3.dart';
import 'mac_screens/mac_screen4.dart';
import 'mac_screens/sidebar_button.dart';
import 'macos_platform_menu.dart';

class MacApp extends StatefulWidget {
  const MacApp({super.key,required this.title});
  final String title;

  @override
  State createState() => MacAppState();
}

class MacAppState extends State<MacApp> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return PlatformMenuBar(
      menus: menuBarItems(),
      child: MacosWindow(
        sidebar: Sidebar(
            minWidth: 200,
            builder: (context, scrollController) {
              return SidebarItems(
                currentIndex: pageIndex,
                onChanged: (i) {
                  setState(() => pageIndex = i);
                },
                scrollController: scrollController,
                itemSize: SidebarItemSize.large,
                items: [
                  SidebarItem(
                    label: Text('menuScreen1'.tr),
                  ),
                  SidebarItem(
                    label: Text('menuScreen2'.tr),
                  ),
                  SidebarItem(
                    label: Text('menuScreen3'.tr),
                  ),
                  SidebarItem(
                    label: Text('menuScreen4'.tr),
                  ),
                ],
              );
            },
            bottom: const MacSidebarButton()),
        child: [
          CupertinoTabView(builder: (_) =>
          const MacScreen1()),
          const MacScreen2(),
          const MacScreen3(),
          const MacScreen4(),
        ][pageIndex],
      ),
    );
  }
}