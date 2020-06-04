import 'package:auto_route/auto_route_annotations.dart';
import 'package:firebasedddresocoder/presentation/sign_in/sign_in_page.dart';
import 'package:firebasedddresocoder/presentation/splash/splash_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  SignPage signInPage;
  SplashPage splashPage;
}
