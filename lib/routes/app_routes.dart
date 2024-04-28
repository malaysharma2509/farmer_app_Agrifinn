import 'package:flutter/material.dart';
import '../presentation/android_large_seven_screen/android_large_seven_screen.dart';
import '../presentation/android_large_three_screen/android_large_three_screen.dart';
import '../presentation/android_large_one_one_screen/android_large_one_one_screen.dart';
import '../presentation/android_large_two_screen/android_large_two_screen.dart';
import '../presentation/android_large_one_screen/android_large_one_screen.dart';
import '../presentation/android_large_one_two_screen/android_large_one_two_screen.dart';
import '../presentation/android_large_six_screen/android_large_six_screen.dart';
import '../presentation/android_large_five_screen/android_large_five_screen.dart';
import '../presentation/android_large_eight_screen/android_large_eight_screen.dart';
import '../presentation/android_largeee_six_screen/android_largeee_six_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/lender_condition/lender_condition_screen.dart';


class AppRoutes {
  static const String androidLargeThreeScreen = '/android_large_three_screen';
  static const String androidLargeOneOneScreen = '/android_large_one_one_screen';
  static const String androidLargeTwoScreen = '/android_large_two_screen';
  static const String androidLargeOneScreen = '/android_large_one_screen';
  static const String androidLargeOneTwoScreen = '/android_large_one_two_screen';
  static const String androidLargeSixScreen = '/android_large_six_screen';
  static const String androidLargeFiveScreen = '/android_large_five_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String androidLargeEightScreen = '/android_large_eight_screen';
  static const String androidLargeSevenScreen = '/android_large_seven_screen';
  static const String androidLargeeeSixScreen = '/android_largeee_six_screen';
  static const String lenderConditionScreen = '/lender_condition_screen'; // Corrected route name

  static Map<String, WidgetBuilder> routes = {
    androidLargeThreeScreen: (context) => AndroidLargeThreeScreen(),
    androidLargeOneOneScreen: (context) => AndroidLargeOneOneScreen(),
    androidLargeTwoScreen: (context) => AndroidLargeTwoScreen(),
    androidLargeOneScreen: (context) => AndroidLargeOneScreen(),
    androidLargeOneTwoScreen: (context) => AndroidLargeOneTwoScreen(),
    androidLargeSixScreen: (context) => AndroidLargeSixScreen(),
    androidLargeFiveScreen: (context) => AndroidLargeFiveScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    androidLargeEightScreen: (context) => AndroidLargeEightScreen(),
    androidLargeSevenScreen: (context) => AndroidLargeSevenScreen(),
    androidLargeeeSixScreen: (context) => AndroidLargeeeSixScreen(),
    lenderConditionScreen: (context) => LenderConditionsScreen(), // Corrected route name
  };
}