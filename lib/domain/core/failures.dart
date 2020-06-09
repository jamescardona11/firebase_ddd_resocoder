import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;
  const factory ValueFailure.notes(NotesValueFailure<T> f) = _Notes<T>;
}

@freezed
abstract class AuthValueFailure<T> with _$AuthValueFailure<T> {
  const factory AuthValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;
  const factory AuthValueFailure.shortPassword({
    @required T failedValue,
  }) = ShortPassword<T>;
}

@freezed
abstract class NotesValueFailure<T> with _$NotesValueFailure<T> {
  const factory NotesValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;
  const factory NotesValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;
  const factory NotesValueFailure.multiline({
    @required T failedValue,
  }) = MultiLine<T>;
  const factory NotesValueFailure.listToLong({
    @required T failedValue,
    @required int max,
  }) = ListToLong<T>;
}
