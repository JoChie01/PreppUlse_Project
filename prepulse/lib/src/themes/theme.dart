import 'package:flutter/material.dart';
import 'package:prepulse/src/constants/colors.dart';



class PAppTheme {
  PAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    //outlinedButtonTheme: POutlinedButtonTheme.lightOutlinedButtonTheme,
    //elevatedButtonTheme: PElevatedButtonTheme.lightElevatedButtonTheme
    secondaryHeaderColor: pWhiteColor,
    primaryColor: pSecondaryColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(pSecondaryColor),
    textStyle: MaterialStateProperty.all(TextStyle(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400
    )),
      foregroundColor: MaterialStateProperty.all(pWhiteColor) 
    )
    )
    );


  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    //outlinedButtonTheme: POutlinedButtonTheme.darkOutlinedButtonTheme,
    //elevatedButtonTheme: PElevatedButtonTheme.darkElevatedButtonTheme,
    secondaryHeaderColor: pSecondaryColor,
    primaryColor: pWhiteColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(pWhiteColor),
         textStyle: MaterialStateProperty.all(TextStyle(
      color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400,
    )),
    foregroundColor: MaterialStateProperty.all(Colors.black)
    )
    )
  );
}