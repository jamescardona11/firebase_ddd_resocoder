import 'package:dartz/dartz.dart';
import 'package:firebasedddresocoder/domain/core/failures.dart';
import 'package:firebasedddresocoder/domain/core/value_validators.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ValueObject<T> {
	const ValueObject();
	Either<ValueFailure<T>, T> get value;
	
	@override
	bool operator ==(Object o) {
		if (identical(this, o)) return true;
		return o is ValueObject<T> && o.value == value;
	}
	
	@override
	int get hashCode => value.hashCode;
	
	@override
	String toString() => 'Value($value)';
}