import 'package:flutter/material.dart';

import 'app_pallete.dart';

ThemeData lightMode = ThemeData(
    colorScheme:  ColorScheme.light(
        surface: Colors.white,
        primary: AppPallete.primary,
        secondary: Colors.grey.shade200,
        tertiary: Colors.white,
        inversePrimary: Colors.grey.shade900
    ),
    scaffoldBackgroundColor: AppPallete.whiteColor,


    inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 20.0,
        ),

        errorStyle: const TextStyle(
            fontFamily: 'AfacadFlux',
            fontSize: 12
        ),

        hintStyle: const TextStyle(
            fontFamily: 'AfacadFlux',
            fontSize: 20,
        ),

        disabledBorder:OutlineInputBorder(
            borderSide:  BorderSide(
              color: AppPallete.txtGrey,
              width: 2.0, // Adjust the thickness of the border if necessary
            ),
            borderRadius: BorderRadius.circular(15.0)

        ),

        border: OutlineInputBorder(
            borderSide:  BorderSide(
              color: AppPallete.txtGrey,
            ),
            borderRadius: BorderRadius.circular(15.0)

        )
    ),



    textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontFamily:'AfacadFlux',
            fontSize: 36,
            fontWeight: FontWeight.w600,

            color: AppPallete.black
        ),
        titleMedium:TextStyle(
          fontFamily:'AfacadFlux',
          fontSize: 28,
          fontWeight: FontWeight.w300,

        ),
        titleSmall:TextStyle(
          fontFamily:'AfacadFlux',
          fontSize: 18,
          fontWeight: FontWeight.w600,

        ),
        bodySmall: TextStyle(
            fontFamily: 'AfacadFlux',
            fontSize: 18,
            color: AppPallete.txtGrey
        ),
        bodyMedium: TextStyle(
            fontFamily: 'AfacadFlux',
            fontSize: 26,
            color: AppPallete.txtGrey
        ),
        bodyLarge: TextStyle(
            fontFamily: 'AfacadFlux',
            fontSize: 28,
            color: AppPallete.darkGrey
        ),
        labelSmall: TextStyle(
            fontFamily: 'AfacadFlux',
            fontSize: 12,
            color: AppPallete.darkGrey
        ),
        labelLarge: TextStyle(
            fontFamily: 'AfacadFlux',
            fontSize: 24,
        )

    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(

            padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 15,horizontal: 20)),

            backgroundColor: WidgetStateProperty
                .all<Color>(AppPallete.primary),
            foregroundColor: WidgetStateProperty.all<Color>(AppPallete.whiteColor)

        )
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(

        style: ButtonStyle(

          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 15,horizontal: 20)),


          backgroundColor: WidgetStateProperty
              .all<Color>(AppPallete.transparentColor),
          side:  WidgetStateProperty.resolveWith<BorderSide>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return const BorderSide(
                    color: AppPallete.primary,
                    width: 1,
                  );
                }
                else{
                  return const BorderSide(
                    color: AppPallete.greyColor,
                    width: 1,
                  );
                }

              }
          ),



          foregroundColor: WidgetStateProperty.all<Color>(AppPallete.black),


        )
    )
);