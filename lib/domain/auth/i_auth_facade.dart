import 'package:dartz/dartz.dart';
import 'package:firebasedddresocoder/domain/auth/auth_failure.dart';
import 'package:firebasedddresocoder/domain/auth/user.dart';
import 'package:firebasedddresocoder/domain/auth/value_objects.dart';
import 'package:meta/meta.dart';

abstract class IAuthFacade {
  Option<User> getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {@required EmailAddress emailAddress, @required Password password});

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}
