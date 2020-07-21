import 'package:auto_route/auto_route_annotations.dart';
import 'package:firebasedddresocoder/presentation/note/note_overview/note_overview_page.dart';
import 'package:firebasedddresocoder/presentation/sign_in/sign_in_page.dart';
import 'package:firebasedddresocoder/presentation/splash/splash_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true, routes: <AutoRoute>[
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: SignPage),
  MaterialRoute(page: NoteOverviewPage),
])
class $Router {}
