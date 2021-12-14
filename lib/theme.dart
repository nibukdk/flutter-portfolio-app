import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData _appTheme = _portfolioAppTheme();

// Create a private themedata var
ThemeData _portfolioAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: Colors.white,
      onPrimary: const Color.fromRGBO(33, 36, 61, 1.0),
      error: const Color.fromRGBO(255, 100, 100, 1.0),
      onError: Colors.white,
    ),
    textTheme: appTextTheme(base.textTheme),
  );
}

TextTheme appTextTheme(
  TextTheme base,
) {
  return base
      .copyWith(
        //Intro title
        headline1: base.headline1?.copyWith(
          color: const Color.fromRGBO(33, 36, 61, 1.0),
          fontSize: 44,
          fontWeight: FontWeight.bold,
        ),

        // Work Section title
        headline2: base.headline2?.copyWith(
          color: const Color.fromRGBO(33, 36, 61, 1.0),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),

        // Card title
        headline3: base.headline3?.copyWith(
          color: const Color.fromRGBO(33, 36, 61, 1.0),
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
        //Nav Link
        headline4: base.headline4?.copyWith(
          color: const Color.fromRGBO(33, 36, 61, 1.0),
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        // Card sub-headings and quotes row section
        bodyText2: base.bodyText2?.copyWith(
          color: const Color.fromRGBO(33, 36, 61, 1.0),
          fontSize: 18,
          fontWeight: FontWeight.w300,
        ),

        // For paragrah

        bodyText1: base.bodyText1!.copyWith(
          fontSize: 16.0,
          color: const Color.fromRGBO(33, 36, 61, 1.0),
        ),
        // For sub-titles
        subtitle1: base.subtitle1!.copyWith(
          fontSize: 20,
          color: const Color.fromRGBO(134, 149, 164, 1.0),
        ),
      )
      .apply(fontFamily: "Lato");
}

ThemeData get appTheme {
  return _appTheme;
}
