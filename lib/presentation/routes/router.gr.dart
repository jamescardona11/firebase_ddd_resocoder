// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebasedddresocoder/presentation/sign_in/sign_in_page.dart';
import 'package:firebasedddresocoder/presentation/splash/splash_page.dart';

abstract class Routes {
  static const signInPage = '/';
  static const splashPage = '/splash-page';
  static const all = {
    signInPage,
    splashPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignPage(),
          settings: settings,
        );
      case Routes.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashPage(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSignInPage() => pushNamed(Routes.signInPage);

  Future pushSplashPage() => pushNamed(Routes.splashPage);
}
