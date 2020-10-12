import 'package:auto_route/auto_route.dart';
import 'package:firebasedddresocoder/application/auth/bloc/auth_bloc.dart';
import 'package:firebasedddresocoder/injection.dart';
import 'package:firebasedddresocoder/presentation/routes/router.gr.dart' as router;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Notes App',
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.green[800],
          accentColor: Colors.blueAccent,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.blue[900],
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        //onGenerateRoute: Router(),
        builder: ExtendedNavigator(
          router: router.Router(),
        ),
      ),
    );
  }
}
