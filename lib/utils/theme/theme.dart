import 'package:flutter/material.dart';
import 'package:beatnik/utils/theme/custom_themes/appbar_theme.dart';
import 'package:beatnik/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:beatnik/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:beatnik/utils/theme/custom_themes/chip_theme.dart';
import 'package:beatnik/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:beatnik/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:beatnik/utils/theme/custom_themes/text_field_theme.dart';
import 'package:beatnik/utils/theme/custom_themes/text_theme.dart';

class BeatnikTheme {
  BeatnikTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Catamaran',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: BeatnikTextTheme.lightTextTheme,
      chipTheme: BeatnikChipTheme.lightChipTheme,
      appBarTheme: BeatnikAppbarTheme.lightAppbarTheme,
      checkboxTheme: BeatnikCheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: BeatnikBottomSheetTheme.lightBottomSheetThemeData,
      elevatedButtonTheme: BeatnikElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: BeatnikOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: BeatnikTextFormFieldTheme.lightInputDecorationTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Catamaran',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: BeatnikTextTheme.darkTextTheme,
      chipTheme: BeatnikChipTheme.darkChipTheme,
      appBarTheme: BeatnikAppbarTheme.darkAppbarTheme,
      checkboxTheme: BeatnikCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: BeatnikBottomSheetTheme.darkBottomSheetThemeData,
      elevatedButtonTheme: BeatnikElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: BeatnikOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: BeatnikTextFormFieldTheme.darkInputDecorationTheme);
}
