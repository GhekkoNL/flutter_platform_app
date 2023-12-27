import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'ios_screens/ios_screen1.dart';
import 'ios_screens/ios_screen2.dart';
import 'ios_screens/ios_screen3.dart';
import 'ios_screens/ios_screen4.dart';

class IosApp extends StatefulWidget {
  const IosApp({super.key,required this.title});
  final String title;

  @override
  State createState() => IosAppState();
}

class IosAppState extends State<IosApp> {
  late Future googleFontsPending;

  @override
  void initState() {
    super.initState();
    googleFontsPending = GoogleFonts.pendingFonts([
      GoogleFonts.workSans(),
      GoogleFonts.ubuntu(),
      GoogleFonts.oswald(),
      GoogleFonts.lato(),
      GoogleFonts.montserrat(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: const CupertinoDynamicColor.withBrightness(
            color: CupertinoColors.white, darkColor: CupertinoColors.black),
        currentIndex: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(LineIcons.home, size: 22),
            label: 'menuScreen1'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(LineIcons.gem, size: 24),
            label: 'menuScreen2'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(LineIcons.userFriends, size: 24),
            label: 'menuScreen3'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(LineIcons.stream, size: 24),
            label: 'menuScreen4'.tr,
          ),
        ],
      ),
      tabBuilder: (context, index) {
        late final CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(
              builder: (context) {
                return const IOSScreen1();
              },
            );
            break;
          case 1:
            returnValue = CupertinoTabView(
              builder: (context) {
                return const IOSScreen2();
              },
            );
            break;
          case 2:
            returnValue = CupertinoTabView(
              builder: (context) {
                return const IOSScreen3();
              },
            );
            break;
          case 3:
            returnValue = CupertinoTabView(
              builder: (context) {
                return const IOSScreen4();
              },
            );
            break;
        }
        return returnValue;
      },
    );
  }
}
