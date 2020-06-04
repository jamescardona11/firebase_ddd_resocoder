import 'package:firebasedddresocoder/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:firebasedddresocoder/injection.dart';
import 'package:flutter/material.dart';
import 'package:firebasedddresocoder/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignPage extends StatelessWidget {
  static const String pageRoute = 'sign_in_page_route_id';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}
