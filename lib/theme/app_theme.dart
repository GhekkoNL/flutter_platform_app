import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'colors/custom_colors.dart';

/// - - ######### - - LightTheme - - #######################################///
ThemeData lightTheme = ThemeData(
  useMaterial3: false,
  /// App / Client Light Theme Colors
  primaryColor: CustomColors.primaryColorLight,
  secondaryHeaderColor: CustomColors.secondaryColorLight,

  /// Light Theme Colors
  scaffoldBackgroundColor: const Color(0xFFFCFCFF),
  canvasColor: const Color(0xFF1A1C1E),
  highlightColor: CustomColors.highlightColorLight,
  focusColor: CustomColors.focusColorLight,
  shadowColor: CustomColors.shadowColorLight,
  splashColor: CustomColors.splashColorLight,
  hintColor: CustomColors.hintColorLight,

  /// AppBar Widget Light Theme
  appBarTheme: AppBarTheme(
    backgroundColor: CustomColors.scaffoldBackgroundColorLight,
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    centerTitle: false,
    elevation: 0,
  ),

  /// TabBarTheme Widget Light Theme
  tabBarTheme: const TabBarTheme(
    labelColor: Color(0xff000000),
    unselectedLabelColor: Colors.grey,
    labelPadding: EdgeInsets.symmetric(horizontal: 25),
  ),

  /// NavigationBar Widget Light Theme
  navigationBarTheme: NavigationBarThemeData(
      indicatorColor: Colors.black12,
      backgroundColor: CustomColors.scaffoldBackgroundColorLight,
      labelTextStyle: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return TextStyle(
              fontSize: 13.0, color: CustomColors.primaryColorLight, letterSpacing: 1.0);
        }
        return const TextStyle(
            fontSize: 13.0, color: Colors.black, letterSpacing: 1.0);
      })),

  /// NavigationRail Widget Light Theme
  navigationRailTheme: NavigationRailThemeData(
    backgroundColor: CustomColors.scaffoldBackgroundColorLight,
    indicatorColor: CustomColors.scaffoldBackgroundColorLight,
    selectedIconTheme: IconThemeData(color: CustomColors.primaryColorLight),
    selectedLabelTextStyle: TextStyle(color: CustomColors.primaryColorLight),
    unselectedIconTheme: const IconThemeData(color: Colors.black),
    unselectedLabelTextStyle: const TextStyle(color: Colors.black),
  ),

  /// CardTheme Widget Light Theme
  cardTheme: CardTheme(
    color: CustomColors.cardColorLight,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6),
          topRight: Radius.circular(6),
          bottomLeft: Radius.circular(6),
          bottomRight: Radius.circular(6)),
    ),
  ),

  /// ElevatedButton Widget Light Theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      foregroundColor: Colors.black,
      backgroundColor: CustomColors.elevatedButtonLight,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
  ),

  /// Floating Action Button Widget Light Theme
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
  ),

  /// Text Theme Light Theme
  textTheme: TextTheme(
    displayLarge: GoogleFonts.workSans(
        fontSize: 17.sp,
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal),
    displayMedium: GoogleFonts.workSans(
        fontSize: 16.sp,
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic),
    displaySmall: GoogleFonts.workSans(
        fontSize: 15.sp,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal),
    headlineLarge: GoogleFonts.ubuntu(
        fontSize: 15.sp,
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal),
    headlineMedium: GoogleFonts.ubuntu(
        fontSize: 14.sp,
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.italic),
    headlineSmall: GoogleFonts.ubuntu(
        fontSize: 13.sp,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal),
    titleLarge: GoogleFonts.oswald(
        fontSize: 17.sp,
        color: Colors.black,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.5,
        fontStyle: FontStyle.normal),
    titleMedium: GoogleFonts.oswald(
        fontSize: 16.sp,
        color: Colors.black,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
        fontStyle: FontStyle.normal),
    titleSmall: GoogleFonts.oswald(
        fontSize: 15.sp,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.5,
        fontStyle: FontStyle.normal),
    bodyLarge: GoogleFonts.lato(
        fontSize: 14.sp,
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal),
    bodyMedium: GoogleFonts.lato(
        fontSize: 13.sp,
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal),
    bodySmall: GoogleFonts.lato(
        fontSize: 12.sp,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal),
    labelLarge: GoogleFonts.montserrat(
        fontSize: 10.sp,
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal),
    labelMedium: GoogleFonts.montserrat(
        fontSize: 9.sp,
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic),
    labelSmall: GoogleFonts.montserrat(
        fontSize: 8.sp,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal),
  ),

  /// Color Scheme Light Theme
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: const Color(0xFF242424),
    onPrimary: const Color(0xFFFFFFFF),
    primaryContainer: const Color(0xFFe8e8e8).withOpacity(0.6),
    onPrimaryContainer: const Color(0xFF001D32),
    secondary: const Color(0xFF7D5800),
    onSecondary: const Color(0xFFFFFFFF),
    secondaryContainer: const Color(0xFFFFDEA9),
    onSecondaryContainer: const Color(0xFF271900),
    tertiary: const Color(0xFF006780),
    onTertiary: const Color(0xFFFFFFFF),
    tertiaryContainer: const Color(0xFFB8EAFF),
    onTertiaryContainer: const Color(0xFF001F28),
    error: const Color(0xFFBA1A1A),
    errorContainer: const Color(0xFFFFDAD6),
    onError: const Color(0xFFFFFFFF),
    onErrorContainer: const Color(0xFF410002),
    background: const Color(0xFFFCFCFF),
    onBackground: const Color(0xFF1A1C1E),
    surface: const Color(0xFFFCFCFF),
    onSurface: const Color(0xFF1A1C1E),
    surfaceVariant: const Color(0xFFf5f5f5),
    onSurfaceVariant: const Color(0xFF42474E),
    outline: const Color(0xFF72787F),
    onInverseSurface: const Color(0xFFF0F0F4),
    inverseSurface: const Color(0xFF2F3033),
    inversePrimary: const Color(0xFF95CCFF),
    shadow: const Color(0xFF000000),
    surfaceTint: const Color(0xFF006399),
    outlineVariant: const Color(0xFFC2C7CF),
    scrim: const Color(0xFF000000),
  ),
);

/// - - ######### - - End LightTheme - - ###################################///
///
///
/// - - ######### - - DarkTheme - - ########################################///
ThemeData darkTheme = ThemeData(
  useMaterial3: false,
  /// App / Client Dark Theme Colors
  primaryColor: CustomColors.primaryColorDark,
  secondaryHeaderColor: CustomColors.secondaryColorLight,

  /// Dark Theme Colors
  scaffoldBackgroundColor: const Color(0xFF131313),
  canvasColor: const Color(0xFFE2E2E5),
  highlightColor: CustomColors.highlightColorDark,
  focusColor: CustomColors.focusColorDark,
  shadowColor: CustomColors.shadowColorDark,
  splashColor: CustomColors.splashColorDark,
  hintColor: CustomColors.hintColorDark,

  /// AppBar Widget Dark Theme
  appBarTheme: AppBarTheme(
    backgroundColor: CustomColors.scaffoldBackgroundColorDark,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    centerTitle: false,
    elevation: 0,
  ),

  /// TabBarTheme Widget Dark Theme
  tabBarTheme: const TabBarTheme(
    labelColor: Color(0xffffffff),
    unselectedLabelColor: Colors.grey,
    labelPadding: EdgeInsets.symmetric(horizontal: 25),
  ),

  /// NavigationBar Widget Dark Theme
  navigationBarTheme: NavigationBarThemeData(
      indicatorColor: Colors.white12,
      backgroundColor: CustomColors.scaffoldBackgroundColorDark,
      labelTextStyle: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return TextStyle(
              fontSize: 13.0, color: CustomColors.primaryColorDark, letterSpacing: 1.0);
        }
        return const TextStyle(
            fontSize: 13.0, color: Colors.white, letterSpacing: 1.0);
      })),

  /// NavigationRail Widget Dark Theme
  navigationRailTheme: NavigationRailThemeData(
    backgroundColor: CustomColors.scaffoldBackgroundColorDark,
    indicatorColor: CustomColors.scaffoldBackgroundColorDark,
    selectedIconTheme: IconThemeData(color: CustomColors.primaryColorDark),
    selectedLabelTextStyle: TextStyle(color: CustomColors.primaryColorDark),
    unselectedIconTheme: const IconThemeData(color: Colors.grey),
    unselectedLabelTextStyle: const TextStyle(color: Colors.grey),
  ),

  /// CardTheme Widget Dark Theme
  cardTheme: CardTheme(
    color: CustomColors.cardColorDark,
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Colors.grey.withOpacity(0.2),
      ),
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(6),
          topRight: Radius.circular(6),
          bottomLeft: Radius.circular(6),
          bottomRight: Radius.circular(6)),
    ),
  ),

  /// ElevatedButton Widget Dark Theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      foregroundColor: Colors.black,
      backgroundColor: CustomColors.elevatedButtonDark,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
  ),

  /// Floating Action Button Widget Light Theme
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
  ),

  /// Text Theme Dark Theme
  textTheme: TextTheme(
    displayLarge: GoogleFonts.workSans(
        fontSize: 17.sp,
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal),
    displayMedium: GoogleFonts.workSans(
        fontSize: 16.sp,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic),
    displaySmall: GoogleFonts.workSans(
        fontSize: 15.sp,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal),
    headlineLarge: GoogleFonts.ubuntu(
        fontSize: 15.sp,
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal),
    headlineMedium: GoogleFonts.ubuntu(
        fontSize: 14.sp,
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.italic),
    headlineSmall: GoogleFonts.ubuntu(
        fontSize: 13.sp,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal),
    titleLarge: GoogleFonts.oswald(
        fontSize: 17.sp,
        color: Colors.white,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.5,
        fontStyle: FontStyle.normal),
    titleMedium: GoogleFonts.oswald(
        fontSize: 16.sp,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
        fontStyle: FontStyle.normal),
    titleSmall: GoogleFonts.oswald(
        fontSize: 15.sp,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.5,
        fontStyle: FontStyle.normal),
    bodyLarge: GoogleFonts.lato(
        fontSize: 14.sp,
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal),
    bodyMedium: GoogleFonts.lato(
        fontSize: 13.sp,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal),
    bodySmall: GoogleFonts.lato(
        fontSize: 12.sp,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal),
    labelLarge: GoogleFonts.montserrat(
        fontSize: 10.sp,
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal),
    labelMedium: GoogleFonts.montserrat(
        fontSize: 9.sp,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic),
    labelSmall: GoogleFonts.montserrat(
        fontSize: 8.sp,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal),
  ),

  /// Color Scheme Dark Theme
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: const Color(0xFF242424),
    onPrimary: const Color(0xFF003352),
    primaryContainer: const Color(0xFF242424).withOpacity(0.5),
    onPrimaryContainer: const Color(0xFFCDE5FF),
    secondary: const Color(0xFFF9BC49),
    onSecondary: const Color(0xFF422C00),
    secondaryContainer: const Color(0xFF5F4100),
    onSecondaryContainer: const Color(0xFFFFDEA9),
    tertiary: const Color(0xFF5ED4FC),
    onTertiary: const Color(0xFF003544),
    tertiaryContainer: const Color(0xFF004D61),
    onTertiaryContainer: const Color(0xFFB8EAFF),
    error: const Color(0xFFFFB4AB),
    errorContainer: const Color(0xFF93000A),
    onError: const Color(0xFF690005),
    onErrorContainer: const Color(0xFFFFDAD6),
    background: const Color(0xFF131313),
    onBackground: const Color(0xFFE2E2E5),
    surface: const Color(0xFF1A1C1E),
    onSurface: const Color(0xFFE2E2E5),
    surfaceVariant: const Color(0xFF1E1D1D),
    onSurfaceVariant: const Color(0xFFC2C7CF),
    outline: const Color(0xFF8C9198),
    onInverseSurface: const Color(0xFF1A1C1E),
    inverseSurface: const Color(0xFFE2E2E5),
    inversePrimary: const Color(0xFF006399),
    shadow: const Color(0xFF000000),
    surfaceTint: const Color(0xFF95CCFF),
    outlineVariant: const Color(0xFF42474E),
    scrim: const Color(0xFF000000),
  ),
);