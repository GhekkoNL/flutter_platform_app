import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_acrylic/window.dart';
import 'package:flutter_acrylic/window_effect.dart';
import 'package:get/get.dart';
import 'app.dart';
import 'locale/translations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:window_manager/window_manager.dart';
import 'package:app/theme/widget_styling/design_elements.dart';

Future<void> _configureMacosWindowUtils() async {
  const config = MacosWindowUtilsConfig();
  await config.apply();
}

Future<void> main() async {
  if (!kIsWeb) {
    if (Platform.isMacOS) {
      await _configureMacosWindowUtils();
      await windowManager.ensureInitialized();
      WindowOptions windowOptions = const WindowOptions(
        size: Size(1280, 860),
        center: true,
        backgroundColor: Colors.transparent,
        skipTaskbar: false,
        titleBarStyle: TitleBarStyle.hidden,
      );
      windowManager.waitUntilReadyToShow(windowOptions, () async {
        await windowManager.show();
        await windowManager.focus();
      });
    }

    if (Platform.isWindows) {
      WidgetsFlutterBinding.ensureInitialized();
      await Window.initialize();
      await Window.setEffect(
        effect: WindowEffect.aero,
        color: Colors.transparent,
      );
      await windowManager.ensureInitialized();
      WindowOptions windowOptions = const WindowOptions(
        size: Size(1280, 860),
        center: true,
        backgroundColor: Colors.transparent,
        skipTaskbar: false,
      );
      windowManager.waitUntilReadyToShow(windowOptions, () async {
        await windowManager.show();
        await windowManager.focus();
      });
    }
  }

  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale('nl', 'NL'),
      fallbackLocale: const Locale('en', 'GB'),
      home: const AppStarter(title: 'Platform App',)));
}


class RunSplash extends StatefulWidget {
  const RunSplash({super.key});

  @override
  State createState() => RunSplashState();
}

class RunSplashState extends State<RunSplash>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    Timer(
        const Duration(seconds: 5),
            () => Navigator.pushReplacement(
            context,
            CupertinoPageRoute(
                builder: (context) => const AppStarter(title: 'Platform App'))));
  }

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Container(
                    padding: const EdgeInsets.all(Insets.large),
                    color: Colors.white,
                    child: Image.asset(
                      'assets/images/home/powered_by.png',
                      height: 34.0,
                      fit: BoxFit.cover,
                    ),
                  ))
            ],
          ),
          Center(
              child: Container(
                padding: const EdgeInsets.all(Insets.large),
                color: Colors.white,
                child: Image.asset(
                  'assets/images/home/platform-app-logo.png',
                  width: animation.value * 400,
                  height: animation.value * 400,
                ),
              )),
        ],
      ),
    );
  }
}
