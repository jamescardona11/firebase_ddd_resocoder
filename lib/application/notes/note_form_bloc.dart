import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebasedddresocoder/domain/notes/note.dart';
import 'package:firebasedddresocoder/domain/notes/note_failure.dart';
import 'package:firebasedddresocoder/presentation/note/note_form/misc/todo_item_presentation_classes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  @override
  NoteFormState get initialState => NoteFormState.initial();

  @override
  Stream<NoteFormState> mapEventToState(
    NoteFormEvent event,
  ) async* {
    yield* event.when(
      initialized: (note) async* {},
      bodyChanged: (bodyStr) async* {},
      colorChanged: (colorStr) async* {},
      todosChanged: (todos) async* {},
      saved: () async* {},
    );
  }
}
