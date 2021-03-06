import 'package:auto_route/auto_route.dart';
import 'package:firebasedddresocoder/application/auth/bloc/auth_bloc.dart';
import 'package:firebasedddresocoder/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  static const String pageRoute = 'splash_page_route_id';

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          authenticated: () {
            ExtendedNavigator.of(context).pushAndRemoveUntil(
              Routes.noteOverviewPage,
              (route) => false,
            );
          },
          unauthenticated: () => ExtendedNavigator.of(context).pushAndRemoveUntil(
            Routes.signPage,
            (route) => false,
          ),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
