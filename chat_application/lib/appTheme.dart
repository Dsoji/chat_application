// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
    primaryColor: kPrimaryColor,
    buttonColor: kPrimaryColor,
    indicatorColor: Colors.white,
    splashColor: Colors.white24,
    splashFactory: InkRipple.splashFactory,
    fontFamily: "WorkSans",
    shadowColor: Theme.of(context).disabledColor,
    dividerColor: const Color(0xff707070),
    canvasColor: Colors.white,
    backgroundColor: const Color(0xFFFFFFFF),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    errorColor: kErrorColor,
    textTheme: GoogleFonts.workSansTextTheme(
      Theme.of(context).textTheme,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: const ColorScheme.light(
            primary: kPrimaryColor, secondary: kPrimaryColor)
        .copyWith(secondary: kPrimaryColor),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: kPrimaryColor,
    indicatorColor: Colors.white,
    splashColor: Colors.white24,
    splashFactory: InkRipple.splashFactory,
    fontFamily: "WorkSans",
    shadowColor: Theme.of(context).disabledColor,
    dividerColor: const Color(0xff707070),
    canvasColor: Colors.white,
    backgroundColor: Colors.black,
    errorColor: kErrorColor,
    textTheme: GoogleFonts.workSansTextTheme(
      Theme.of(context).textTheme,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: const ColorScheme.dark().copyWith(secondary: kPrimaryColor),
  );
}

const kPrimaryColor = Color(0xffF76C6C);
// const kSecondaryColor = Color(0xFFFE9901);
// const kContentColorLightTheme = Color(0xFF1D1D35);
// const kContentColorDarkTheme = Color(0xFFF5FCF9);
const kWarningColor = Color(0xFFF3BB1C);
const kErrorColor = Color(0xFFF03738);

const kDefaultPadding = 20.0;

const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
