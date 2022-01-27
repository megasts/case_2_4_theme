import 'package:flutter/material.dart';


const Color lightColorText = Color(0xFF000000);
const Color darkColorText = Color(0xDDB9C3D2);
const Color devidColor = Color(0xFFE8E8E8);

ThemeData globalTheme() => ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor:
      Color.fromRGBO(255, 190, 80, 1.0),
      titleTextStyle: TextStyle( fontFamily: 'Inter',
          fontSize: 16,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w400,
          color: lightColorText),
      ),
      shadowColor: const Color(0xffECEFF1),
      fontFamily: 'Inter',
      colorScheme: const ColorScheme.light(),
      cardColor: const Color(0xFF0079D0),
      disabledColor: const Color(0xFFECEFF1),
      sliderTheme: SliderThemeData.fromPrimaryColors(
          primaryColor: const Color(0xFF0079D0),
          primaryColorDark: const Color(0xFF000000),
          primaryColorLight: const Color(0xFF0079D0),
          valueIndicatorTextStyle: const TextStyle(color: Color (0xFF0079D0))
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 30.0,
          color: lightColorText,
        ),
        headline2: TextStyle(
          fontSize: 16.0,
          color: lightColorText,
          fontWeight: FontWeight.w600,
        ),
        headline3: TextStyle(
            fontSize: 18.0,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            letterSpacing: -1.5,
            color: lightColorText),
        headline4: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF263238),
            fontWeight: FontWeight.w600,
            letterSpacing: 0.2),
        headline5: TextStyle(
            fontSize: 16.0,
            color: Color(0xFF333333),
            fontWeight: FontWeight.w500),
        headline6: TextStyle(
            fontSize: 16.0,
            color: Color(0xFF263238),
            fontWeight: FontWeight.w400,
            letterSpacing: 1.0),
        bodyText1: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Roboto',
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w400,
            letterSpacing: -1.5),
        bodyText2: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Roboto',
            color: Color(0x66000000),
            fontWeight: FontWeight.w400,
            letterSpacing: -1.5),
        button: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Roboto',
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w400,
            letterSpacing: 0),
      ),
    );

ThemeData globalThemedark() => ThemeData(
  appBarTheme: const AppBarTheme(backgroundColor:
  Colors.brown,
    titleTextStyle: TextStyle( fontFamily: 'Inter',
        fontSize: 16,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w500,
        color: darkColorText),
  ),
  cardColor: const Color(0xFF4C2414),
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.dark,
    backgroundColor: Colors.yellow,
    primarySwatch: Colors.deepOrange,
    cardColor: Colors.orange,
    primaryColorDark: Colors.orange,
  ).copyWith(),
  indicatorColor: const Color(0xae251458),
  shadowColor: Colors.brown,
  scaffoldBackgroundColor: const Color(0x74EFAE69),
  fontFamily: 'Inter',
  splashColor: const Color(0xc8271d44),
  sliderTheme: SliderThemeData.fromPrimaryColors(
      primaryColor: const Color(0xae251458),
      primaryColorDark: const Color(0xFF000000),
      primaryColorLight: const Color(0xFF000000),
      valueIndicatorTextStyle: const TextStyle(color: Color (0xFF0079D0))
  ),
  textTheme: const TextTheme(
      headline1: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 30.0,
      color: darkColorText,
    ),
    headline2: TextStyle(
      fontSize: 16.0,
      color: darkColorText,
      fontWeight: FontWeight.w600,
    ),
    headline3: TextStyle(
        fontSize: 18.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        letterSpacing: -1.5,
        color: darkColorText),
    headline4: TextStyle(
        fontSize: 18.0,
        color: darkColorText,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.2),
    headline5: TextStyle(
        fontSize: 16.0,
        color: darkColorText,
        fontWeight: FontWeight.w500),
    headline6: TextStyle(
        fontSize: 16.0,
        color: darkColorText,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.0),
    bodyText1: TextStyle(
        fontSize: 16.0,
        fontFamily: 'Roboto',
        color: darkColorText,
        fontWeight: FontWeight.w400,
        letterSpacing: -1.5),
    bodyText2: TextStyle(
        fontSize: 16.0,
        fontFamily: 'Roboto',
        color: darkColorText,
        fontWeight: FontWeight.w400,
        letterSpacing: -1.5),
    button: TextStyle(
        fontSize: 16.0,
        fontFamily: 'Roboto',
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.w400,
        letterSpacing: 0),
  ),
);