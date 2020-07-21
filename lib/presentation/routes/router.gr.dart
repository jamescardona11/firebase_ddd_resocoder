// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../note/note_overview/note_overview_page.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signPage = '/sign-page';
  static const String noteOverviewPage = '/note-overview-page';
  static const all = <String>{
    splashPage,
    signPage,
    noteOverviewPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signPage, page: SignPage),
    RouteDef(Routes.noteOverviewPage, page: NoteOverviewPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignPage(),
        settings: data,
      );
    },
    NoteOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NoteOverviewPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignPage() => push<dynamic>(Routes.signPage);

  Future<dynamic> pushNoteOverviewPage() =>
      push<dynamic>(Routes.noteOverviewPage);
}
