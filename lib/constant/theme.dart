import 'package:flutter/material.dart';
import 'package:nft_wallet/constant/colors.dart';

class MyTheme {
  static final dark = ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme:
        const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
    primarySwatch: AppColors.mWhite,
    fontFamily: 'Righteous',
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 64.0, color: AppColors.white),
      headline2: TextStyle(fontSize: 44.0, color: AppColors.white),
      headline3: TextStyle(fontSize: 32.0, color: AppColors.white),
      headline4: TextStyle(fontSize: 20.0, color: AppColors.black),
      headline5: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
          color: AppColors.white),
      headline6: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w400,
          fontFamily: 'Montserrat',
          color: AppColors.white),
      bodyText2: TextStyle(fontSize: 16.0, color: AppColors.white),
      bodyText1: TextStyle(fontSize: 14.0, color: AppColors.whiteOpacity40),
    ),
  );
}
