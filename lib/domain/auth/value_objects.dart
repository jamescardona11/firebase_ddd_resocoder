import 'package:dartz/dartz.dart';
import 'package:firebasedddresocoder/domain/core/failures.dart';
import 'package:firebasedddresocoder/domain/core/value_objects.dart';
import 'package:firebasedddresocoder/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);

  String getLeftValue() {
    return value.fold((l) => l.maybeMap(invalidEmail: (_) => 'Invalid Email', orElse: () => null), (_) => null);
  }
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);

  String getLeftValue() {
    return value.fold((l) => l.maybeMap(shortPassword: (_) => 'Invalid Password', orElse: () => null), (_) => null);
  }
}
