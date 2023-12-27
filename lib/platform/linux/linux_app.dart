import 'package:app/platform/android/android_app.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LinuxApp extends StatefulWidget {
  const LinuxApp({super.key, required this.title});
  final String title;

  @override
  State createState() => LinuxAppState();
}

class LinuxAppState extends State<LinuxApp> {
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
    return AndroidApp(
        title: widget.title,
        useLightMode: useLightMode,
        handleBrightnessChange: handleBrightnessChange);
  }
}