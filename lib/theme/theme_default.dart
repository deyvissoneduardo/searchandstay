import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Muli",
      appBarTheme: appBarTheme(),
      textTheme: textTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textSelectionTheme: const TextSelectionThemeData(
        selectionHandleColor: kSecondaryColor,
        cursorColor: kSecondaryColor,
        selectionColor: kSecondaryColor,
      ));
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kPrimaryColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyLarge: TextStyle(color: kSecondaryColor, fontFamily: 'Montserrat'),
    bodyMedium: TextStyle(color: kSecondaryColor, fontFamily: 'Montserrat'),
    headlineSmall: TextStyle(color: kSecondaryColor, fontFamily: 'Montserrat'),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      color: kPrimaryColor,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      titleTextStyle: TextStyle(color: kSecondaryColor, fontSize: 20.0));
}
