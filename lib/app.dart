import 'dart:io';
import 'package:app/platform/android/android_app.dart';
import 'package:app/platform/fuchsia/fuchsia_app.dart';
import 'package:app/platform/ios/ios_app.dart';
import 'package:app/platform/linux/linux_app.dart';
import 'package:app/platform/macos/mac_app.dart';
import 'package:app/platform/windows/windows_app.dart';
import 'package:app/theme/app_theme.dart';
import 'package:app/theme/cupertino_theme.dart';
import 'package:app/theme/masos_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppStarter extends StatefulWidget {
  const AppStarter({super.key, required this.title});
  final String title;

  @override
  State createState() => AppStarterState();
}

class AppStarterState extends State<AppStarter> {
  late Future googleFontsPending;
  ThemeMode themeMode = ThemeMode.system;
  bool get useLightMode {
    switch (themeMode) {
      case ThemeMode.system:
        return View.of(context).platformDispatcher.platformBrightness ==
            Brightness.light;
      case ThemeMode.light:
        return true;
      case ThemeMode.dark:
        return false;
    }
  }

  void handleBrightnessChange(bool useLightMode) {
    setState(() {
      themeMode = useLightMode ? ThemeMode.light : ThemeMode.dark;
    });
  }

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
    return LayoutBuilder(builder: (context, constraints) {
      /// Android & Web
      if (kIsWeb || Platform.isAndroid) {
        return ResponsiveSizer(builder: (context, orientation, screenType) {
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: !kIsWeb && Platform.isAndroid
                ? Brightness.dark
                : Brightness.light,
            systemNavigationBarColor: Colors.white,
            systemNavigationBarDividerColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.dark,
          ));
          return MaterialApp(
              title: widget.title,
              debugShowCheckedModeBanner: false,
              themeMode: themeMode,
              theme: lightTheme,
              darkTheme: darkTheme,
              locale: Get.deviceLocale,
              home: AndroidApp(
                  title: widget.title,
                  useLightMode: useLightMode,
                  handleBrightnessChange: handleBrightnessChange));
        });

        /// IOS
      } else if (Platform.isIOS) {
        return ResponsiveSizer(builder: (context, orientation, screenType) {
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: !kIsWeb && Platform.isAndroid
                ? Brightness.dark
                : Brightness.light,
            systemNavigationBarColor: Colors.white,
            systemNavigationBarDividerColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.dark,
          ));
          return CupertinoApp(
              debugShowCheckedModeBanner: false,
              title: widget.title,
              theme: cupertinoLight,
              locale: Get.deviceLocale,
              home: IosApp(title: widget.title));
        });

        /// Mac OS
      } else if (Platform.isMacOS) {
        return ChangeNotifierProvider(
            create: (_) => MacAppTheme(),
            builder: (context, _) {
              final appTheme = context.watch<MacAppTheme>();
              return MacosApp(
                title: widget.title,
                debugShowCheckedModeBanner: false,
                theme: MacosThemeData.light(),
                darkTheme: MacosThemeData.dark(),
                themeMode: appTheme.mode,
                locale: Get.deviceLocale,
                home: MacApp(title: widget.title));
            });

        /// Linux
      } else if (Platform.isLinux) {
       return ResponsiveSizer(builder: (context, orientation, screenType) {
         SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
           statusBarColor: Colors.transparent,
           statusBarIconBrightness: Brightness.dark,
           statusBarBrightness: !kIsWeb && Platform.isAndroid
               ? Brightness.dark
               : Brightness.light,
           systemNavigationBarColor: Colors.white,
           systemNavigationBarDividerColor: Colors.transparent,
           systemNavigationBarIconBrightness: Brightness.dark,
         ));
         return MaterialApp(
             title: widget.title,
             debugShowCheckedModeBanner: false,
             themeMode: themeMode,
             theme: lightTheme,
             darkTheme: darkTheme,
             locale: Get.deviceLocale,
             home: AndroidApp(
                 title: widget.title,
                 useLightMode: useLightMode,
                 handleBrightnessChange: handleBrightnessChange));
       });

        /// Windows
      } else if (Platform.isWindows) {
        return const WindowsApp();

        /// Fuchsia or else
      } else {
        return const Fuchsia();
      }
    });
  }
}
