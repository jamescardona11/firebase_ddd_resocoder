import 'package:equatable/equatable.dart';

abstract class SignInFormState extends Equatable {
  const SignInFormState();
}

class InitialSignInFormState extends SignInFormState {
  @override
  List<Object> get props => [];
}
