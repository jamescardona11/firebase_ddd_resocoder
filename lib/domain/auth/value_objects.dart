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
    /*value.fold((l){
    	l.maybeWhen(orElse: null, auth: (msg) {
    		msg.map(invalidEmail: null, shortPassword: null);
	    } );
    	l.maybeMap(orElse: null, auth: (msg){
    	
    	
	    });
    	l.when(auth: null, notes: (not){
    		not.map(exceedingLength: null, empty: null, multiline: null, listToLong: null)
    		
	    });
    	l.map(auth: null, notes: null);
    	
    }, (r) => null)*/
    final vv = value.fold((l) => l.maybeWhen(auth: (a) => 'Invalid Email', orElse: () => null), (_) => null);
    print('vv -> ${vv}');
    return value.fold((l) => l.maybeWhen(auth: (a) => 'Invalid Email', orElse: () => null), (_) => null);
    //l.maybeMap(invalidEmail: (_) => 'Invalid Email', orElse: () => null), (_) => null);
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
    return value.fold((l) => l.maybeMap(auth: (_) => 'Invalid Password', orElse: () => null), (_) => null);
    //return value.fold((l) => l.maybeMap(shortPassword: (_) => 'Invalid Password', orElse: () => null), (_) => null);
  }
}
