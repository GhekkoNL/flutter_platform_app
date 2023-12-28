import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../../app/screens/app_screen1/app_screen1.dart';
import '../../app/screens/app_screen2/app_screen2.dart';
import '../../app/screens/app_screen3/app_screen3.dart';
import '../../app/screens/app_screen4/app_screen4.dart';

class WindowsApp extends StatelessWidget {
  const WindowsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      home: NavigationView(
        appBar: const NavigationAppBar(
          title: Text('Bodyland Men\'s BodyCare'),
        ),
        pane: NavigationPane(displayMode: PaneDisplayMode.auto, items: [
          PaneItem(
            icon: const Icon(LineIcons.home, size: 22),
            title: Text('menuScreen1'.tr),
            body: const AppScreen1(),
          ),
          PaneItem(
            icon: const Icon(LineIcons.gem, size: 24),
            title: Text('menuScreen2'.tr),
            body: const AppScreen2(),
          ),
          PaneItem(
            icon: const Icon(LineIcons.userFriends, size: 22),
            title: Text('menuScreen3'.tr),
            body: const AppScreen3(),
          ),
          PaneItem(
            icon: const Icon(LineIcons.stream, size: 22),
            title: Text('menuScreen4'.tr),
            body: const AppScreen4(),
          )
        ]),
      ),
    );
  }
}
