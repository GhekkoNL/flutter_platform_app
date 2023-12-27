import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../app/screens/app_screen1/app_screen1.dart';
import '../../app/screens/app_screen2/app_screen2.dart';
import '../../app/screens/app_screen3/app_screen3.dart';
import '../../app/screens/app_screen4/app_screen4.dart';
import '../../app/widgets/app_bar_title.dart';
import '../../theme/widget_styling/design_elements.dart';
import 'components/transitions.dart';
import 'widgets/action_toggles.dart';
import 'widgets/nav_bar.dart';
import 'components/destinations.dart';

class AndroidApp extends StatefulWidget {
  const AndroidApp({
    super.key,
    required this.title,
    required this.useLightMode,
    required this.handleBrightnessChange,
  });
  final String title;
  final bool useLightMode;
  final void Function(bool useLightMode) handleBrightnessChange;

  @override
  State createState() => AndroidAppState();
}

class AndroidAppState extends State<AndroidApp> with SingleTickerProviderStateMixin {

  ThemeMode themeMode = ThemeMode.system;
  late Future googleFontsPending;

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
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late final AnimationController controller;
  late final CurvedAnimation railAnimation;
  bool controllerInitialized = false;
  bool showMediumSizeLayout = false;
  bool showLargeSizeLayout = false;

  int screenIndex = ScreenSelected.screen1.value;

  @override
  initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: transitionLength.toInt() * 2),
      value: 0,
      vsync: this,
    );
    railAnimation = CurvedAnimation(
      parent: controller,
      curve: const Interval(0.5, 1.0),
    );

    googleFontsPending = GoogleFonts.pendingFonts([
      GoogleFonts.workSans(),
      GoogleFonts.ubuntu(),
      GoogleFonts.oswald(),
      GoogleFonts.lato(),
      GoogleFonts.montserrat(),
    ]);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final double width = MediaQuery.of(context).size.width;
    final AnimationStatus status = controller.status;
    if (width > mediumWidthBreakpoint) {
      if (width > largeWidthBreakpoint) {
        showMediumSizeLayout = false;
        showLargeSizeLayout = true;
      } else {
        showMediumSizeLayout = true;
        showLargeSizeLayout = false;
      }
      if (status != AnimationStatus.forward &&
          status != AnimationStatus.completed) {
        controller.forward();
      }
    } else {
      showMediumSizeLayout = false;
      showLargeSizeLayout = false;
      if (status != AnimationStatus.reverse &&
          status != AnimationStatus.dismissed) {
        controller.reverse();
      }
    }
    if (!controllerInitialized) {
      controllerInitialized = true;
      controller.value = width > mediumWidthBreakpoint ? 1 : 0;
    }
  }

  void handleScreenChanged(int screenSelected) {
    setState(() {
      screenIndex = screenSelected;
    });
  }

  Widget createScreenFor(
      ScreenSelected screenSelected, bool showNavBar) {
    switch (screenSelected) {
      case ScreenSelected.screen1:
        return const Expanded(child: AppScreen1());
      case ScreenSelected.screen2:
        return const Expanded(child: AppScreen2());
      case ScreenSelected.screen3:
        return const Expanded(child: AppScreen3());
      case ScreenSelected.screen4:
        return const Expanded(child: AppScreen4());
    }
  }

  PreferredSizeWidget createAppBar() {
    return AppBar(
      title: const AppBarTitle(),
      actions: !showMediumSizeLayout && !showLargeSizeLayout
          ? [
        BrightnessButton(
          handleBrightnessChange: widget.handleBrightnessChange,
        ),
      ]
          : [Container()],
    );
  }

  Widget _trailingActions() => Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Flexible(
        child: BrightnessButton(
          handleBrightnessChange: widget.handleBrightnessChange,
          showTooltipBelow: false,
        ),
     ),
    ],
  );


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: googleFontsPending,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const SizedBox();
          }
          return AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              return NavigationTransition(
                scaffoldKey: scaffoldKey,
                animationController: controller,
                railAnimation: railAnimation,
                appBar: createAppBar(),
                body: createScreenFor(
                    ScreenSelected.values[screenIndex], controller.value == 1),
                navigationRail: NavigationRail(
                  extended: showLargeSizeLayout,
                  destinations: navRailDestinations,
                  selectedIndex: screenIndex,
                  onDestinationSelected: (index) {
                    setState(() {
                      screenIndex = index;
                      handleScreenChanged(screenIndex);
                    });
                  },
                  trailing: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: showLargeSizeLayout
                          ? ExpandedTrailingActions(
                        useLightMode: widget.useLightMode,
                        handleBrightnessChange: widget.handleBrightnessChange,
                      )
                          : _trailingActions(),
                    ),
                  ),
                ),
                navigationBar: NavBar(
                  onSelectItem: (index) {
                    setState(() {
                      screenIndex = index;
                      handleScreenChanged(screenIndex);
                    });
                  },
                  selectedIndex: screenIndex,
                  isBar: false,
                ),
              );
            },
          );});
  }
}