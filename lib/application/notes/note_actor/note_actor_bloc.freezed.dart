// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'note_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NoteActorEventTearOff {
  const _$NoteActorEventTearOff();

  _Deleted deleted(Note note) {
    return _Deleted(
      note,
    );
  }
}

// ignore: unused_element
const $NoteActorEvent = _$NoteActorEventTearOff();

mixin _$NoteActorEvent {
  Note get note;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Note note),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Note note),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    @required Result orElse(),
  });

  $NoteActorEventCopyWith<NoteActorEvent> get copyWith;
}

abstract class $NoteActorEventCopyWith<$Res> {
  factory $NoteActorEventCopyWith(
          NoteActorEvent value, $Res Function(NoteActorEvent) then) =
      _$NoteActorEventCopyWithImpl<$Res>;
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

class _$NoteActorEventCopyWithImpl<$Res>
    implements $NoteActorEventCopyWith<$Res> {
  _$NoteActorEventCopyWithImpl(this._value, this._then);

  final NoteActorEvent _value;
  // ignore: unused_field
  final $Res Function(NoteActorEvent) _then;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed ? _value.note : note as Note,
    ));
  }

  @override
  $NoteCopyWith<$Res> get note {
    if (_value.note == null) {
      return null;
    }
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

abstract class _$DeletedCopyWith<$Res>
    implements $NoteActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Note note});

  @override
  $NoteCopyWith<$Res> get note;
}

class __$DeletedCopyWithImpl<$Res> extends _$NoteActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(_Deleted(
      note == freezed ? _value.note : note as Note,
    ));
  }
}

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.note) : assert(note != null);

  @override
  final Note note;

  @override
  String toString() {
    return 'NoteActorEvent.deleted(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Note note),
  }) {
    assert(deleted != null);
    return deleted(note);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Note note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
  }) {
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements NoteActorEvent {
  const factory _Deleted(Note note) = _$_Deleted;

  @override
  Note get note;
  @override
  _$DeletedCopyWith<_Deleted> get copyWith;
}

class _$NoteActorStateTearOff {
  const _$NoteActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _DeletedFailure deletedFailure(NoteFailure noteFailure) {
    return _DeletedFailure(
      noteFailure,
    );
  }

  _DeletedSuccess deletedSuccess() {
    return const _DeletedSuccess();
  }
}

// ignore: unused_element
const $NoteActorState = _$NoteActorStateTearOff();

mixin _$NoteActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deletedFailure(NoteFailure noteFailure),
    @required Result deletedSuccess(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletedFailure(NoteFailure noteFailure),
    Result deletedSuccess(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deletedFailure(_DeletedFailure value),
    @required Result deletedSuccess(_DeletedSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletedFailure(_DeletedFailure value),
    Result deletedSuccess(_DeletedSuccess value),
    @required Result orElse(),
  });
}

abstract class $NoteActorStateCopyWith<$Res> {
  factory $NoteActorStateCopyWith(
          NoteActorState value, $Res Function(NoteActorState) then) =
      _$NoteActorStateCopyWithImpl<$Res>;
}

class _$NoteActorStateCopyWithImpl<$Res>
    implements $NoteActorStateCopyWith<$Res> {
  _$NoteActorStateCopyWithImpl(this._value, this._then);

  final NoteActorState _value;
  // ignore: unused_field
  final $Res Function(NoteActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$NoteActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NoteActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deletedFailure(NoteFailure noteFailure),
    @required Result deletedSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletedFailure != null);
    assert(deletedSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletedFailure(NoteFailure noteFailure),
    Result deletedSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deletedFailure(_DeletedFailure value),
    @required Result deletedSuccess(_DeletedSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletedFailure != null);
    assert(deletedSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletedFailure(_DeletedFailure value),
    Result deletedSuccess(_DeletedSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NoteActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'NoteActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deletedFailure(NoteFailure noteFailure),
    @required Result deletedSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletedFailure != null);
    assert(deletedSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletedFailure(NoteFailure noteFailure),
    Result deletedSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deletedFailure(_DeletedFailure value),
    @required Result deletedSuccess(_DeletedSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletedFailure != null);
    assert(deletedSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletedFailure(_DeletedFailure value),
    Result deletedSuccess(_DeletedSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements NoteActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$DeletedFailureCopyWith<$Res> {
  factory _$DeletedFailureCopyWith(
          _DeletedFailure value, $Res Function(_DeletedFailure) then) =
      __$DeletedFailureCopyWithImpl<$Res>;
  $Res call({NoteFailure noteFailure});

  $NoteFailureCopyWith<$Res> get noteFailure;
}

class __$DeletedFailureCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res>
    implements _$DeletedFailureCopyWith<$Res> {
  __$DeletedFailureCopyWithImpl(
      _DeletedFailure _value, $Res Function(_DeletedFailure) _then)
      : super(_value, (v) => _then(v as _DeletedFailure));

  @override
  _DeletedFailure get _value => super._value as _DeletedFailure;

  @override
  $Res call({
    Object noteFailure = freezed,
  }) {
    return _then(_DeletedFailure(
      noteFailure == freezed ? _value.noteFailure : noteFailure as NoteFailure,
    ));
  }

  @override
  $NoteFailureCopyWith<$Res> get noteFailure {
    if (_value.noteFailure == null) {
      return null;
    }
    return $NoteFailureCopyWith<$Res>(_value.noteFailure, (value) {
      return _then(_value.copyWith(noteFailure: value));
    });
  }
}

class _$_DeletedFailure implements _DeletedFailure {
  const _$_DeletedFailure(this.noteFailure) : assert(noteFailure != null);

  @override
  final NoteFailure noteFailure;

  @override
  String toString() {
    return 'NoteActorState.deletedFailure(noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeletedFailure &&
            (identical(other.noteFailure, noteFailure) ||
                const DeepCollectionEquality()
                    .equals(other.noteFailure, noteFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(noteFailure);

  @override
  _$DeletedFailureCopyWith<_DeletedFailure> get copyWith =>
      __$DeletedFailureCopyWithImpl<_DeletedFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deletedFailure(NoteFailure noteFailure),
    @required Result deletedSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletedFailure != null);
    assert(deletedSuccess != null);
    return deletedFailure(noteFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletedFailure(NoteFailure noteFailure),
    Result deletedSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletedFailure != null) {
      return deletedFailure(noteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deletedFailure(_DeletedFailure value),
    @required Result deletedSuccess(_DeletedSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletedFailure != null);
    assert(deletedSuccess != null);
    return deletedFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletedFailure(_DeletedFailure value),
    Result deletedSuccess(_DeletedSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletedFailure != null) {
      return deletedFailure(this);
    }
    return orElse();
  }
}

abstract class _DeletedFailure implements NoteActorState {
  const factory _DeletedFailure(NoteFailure noteFailure) = _$_DeletedFailure;

  NoteFailure get noteFailure;
  _$DeletedFailureCopyWith<_DeletedFailure> get copyWith;
}

abstract class _$DeletedSuccessCopyWith<$Res> {
  factory _$DeletedSuccessCopyWith(
          _DeletedSuccess value, $Res Function(_DeletedSuccess) then) =
      __$DeletedSuccessCopyWithImpl<$Res>;
}

class __$DeletedSuccessCopyWithImpl<$Res>
    extends _$NoteActorStateCopyWithImpl<$Res>
    implements _$DeletedSuccessCopyWith<$Res> {
  __$DeletedSuccessCopyWithImpl(
      _DeletedSuccess _value, $Res Function(_DeletedSuccess) _then)
      : super(_value, (v) => _then(v as _DeletedSuccess));

  @override
  _DeletedSuccess get _value => super._value as _DeletedSuccess;
}

class _$_DeletedSuccess implements _DeletedSuccess {
  const _$_DeletedSuccess();

  @override
  String toString() {
    return 'NoteActorState.deletedSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeletedSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deletedFailure(NoteFailure noteFailure),
    @required Result deletedSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletedFailure != null);
    assert(deletedSuccess != null);
    return deletedSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletedFailure(NoteFailure noteFailure),
    Result deletedSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletedSuccess != null) {
      return deletedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deletedFailure(_DeletedFailure value),
    @required Result deletedSuccess(_DeletedSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletedFailure != null);
    assert(deletedSuccess != null);
    return deletedSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletedFailure(_DeletedFailure value),
    Result deletedSuccess(_DeletedSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletedSuccess != null) {
      return deletedSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeletedSuccess implements NoteActorState {
  const factory _DeletedSuccess() = _$_DeletedSuccess;
}
