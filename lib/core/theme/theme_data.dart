import 'package:flutter/material.dart';
import 'package:movie_booking_app/core/constant/color_palette.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: ColorPalette.primary,
      secondary: ColorPalette.secondary,
      tertiary: ColorPalette.tertiary,
      surface: ColorPalette.surface,
      background: Colors.white,
    ),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 2.0,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.white,
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
        inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 1.5,
          color: ColorPalette.primary,
          // color: ColorPalette.secondary,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    )),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 12,
          ),
        ),
        side: const MaterialStatePropertyAll(
          BorderSide(
            width: 1.5,
            // color: ColorPalette.secondary,
          ),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        foregroundColor: const MaterialStatePropertyAll(
          ColorPalette.primary, //change background color of button
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 32,
          ),
        ),
        minimumSize: const MaterialStatePropertyAll(Size(0, 0)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
        textStyle: const MaterialStatePropertyAll(
          TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}
