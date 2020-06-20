import 'package:firebasedddresocoder/domain/core/failures.dart';

class NoAuthenticatedError extends Error {
  NoAuthenticatedError();

  @override
  String toString() {
    const explanation = 'Encountered a error because not authenticated error.';
    return Error.safeToString(explanation);
  }
}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
