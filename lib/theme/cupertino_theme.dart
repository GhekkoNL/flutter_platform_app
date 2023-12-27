import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

CupertinoThemeData cupertinoLight = CupertinoThemeData(
    //brightness: Brightness.light,
    //primaryColor: const Color.fromARGB(255, 10, 10, 255),
    //primaryContrastingColor: const Color.fromARGB(255, 100, 100, 255),
    //barBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
    //scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
    textTheme: CupertinoTextThemeData(
  primaryColor: CupertinoColors.activeBlue,
  textStyle: cupertinoDefaultTextStyle,
  actionTextStyle: cupertinoDefaultActionTextStyle,
  tabLabelTextStyle: cupertinoDefaultTabLabelTextStyle,
  navTitleTextStyle: cupertinoDefaultMiddleTitleTextStyle,
  navLargeTitleTextStyle: cupertinoDefaultLargeTitleTextStyle,
  pickerTextStyle: cupertinoDefaultPickerTextStyle,
  dateTimePickerTextStyle: cupertinoDefaultDateTimePickerTextStyle,
  navActionTextStyle: cupertinoDefaultActionTextStyle,
));

CupertinoDynamicColor cupertinoTextColor =
    const CupertinoDynamicColor.withBrightness(
  color: CupertinoColors.black,
  darkColor: CupertinoColors.white,
);

TextStyle cupertinoDefaultTextStyle = GoogleFonts.lato(
    fontSize: 13,
    color: cupertinoTextColor,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  decoration: TextDecoration.none,
);

TextStyle cupertinoDefaultActionTextStyle = TextStyle(
  inherit: false,
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontSize: 17,
  letterSpacing: -0.41,
  color: cupertinoTextColor,
  decoration: TextDecoration.none,
);

TextStyle cupertinoDefaultTabLabelTextStyle = TextStyle(
  inherit: false,
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontSize: 10,
  letterSpacing: -0.24,
  color: cupertinoTextColor,
);

TextStyle cupertinoDefaultMiddleTitleTextStyle = TextStyle(
  inherit: false,
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontSize: 17,
  fontWeight: FontWeight.w600,
  letterSpacing: -0.41,
  color: cupertinoTextColor,
);

TextStyle cupertinoDefaultLargeTitleTextStyle = TextStyle(
  inherit: false,
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontSize: 34.0,
  fontWeight: FontWeight.w700,
  letterSpacing: 0.41,
  color: cupertinoTextColor,
);

TextStyle cupertinoDefaultPickerTextStyle = TextStyle(
  inherit: false,
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontSize: 21,
  fontWeight: FontWeight.w400,
  letterSpacing: -0.6,
  color: cupertinoTextColor,
);

TextStyle cupertinoDefaultDateTimePickerTextStyle = TextStyle(
  inherit: false,
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontSize: 21,
  fontWeight: FontWeight.normal,
  color: cupertinoTextColor,
);
