import 'package:flutter/material.dart';
import 'package:rhsgrad/presentation/splash_screen/splash_screen.dart';
import 'package:rhsgrad/presentation/get_started_screen/get_started_screen.dart';
import 'package:rhsgrad/presentation/sign_up_login_create_screen/sign_up_login_create_screen.dart';
import 'package:rhsgrad/presentation/new_account_screen/new_account_screen.dart';
import 'package:rhsgrad/presentation/user_verify_screen/user_verify_screen.dart';
import 'package:rhsgrad/presentation/profile_creation_screen/profile_creation_screen.dart';
import 'package:rhsgrad/presentation/verify_celebration_screen/verify_celebration_screen.dart';
import 'package:rhsgrad/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String getStartedScreen = '/get_started_screen';

  static const String signUpLoginCreateScreen = '/sign_up_login_create_screen';

  static const String newAccountScreen = '/new_account_screen';

  static const String userVerifyScreen = '/user_verify_screen';

  static const String profileCreationScreen = '/profile_creation_screen';

  static const String verifyCelebrationScreen = '/verify_celebration_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    getStartedScreen: (context) => GetStartedScreen(),
    signUpLoginCreateScreen: (context) => SignUpLoginCreateScreen(),
    newAccountScreen: (context) => NewAccountScreen(),
    userVerifyScreen: (context) => UserVerifyScreen(),
    profileCreationScreen: (context) => ProfileCreationScreen(),
    verifyCelebrationScreen: (context) => VerifyCelebrationScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
