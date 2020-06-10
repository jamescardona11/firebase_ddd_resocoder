import 'package:dartz/dartz.dart';
import 'package:firebasedddresocoder/domain/core/failures.dart';
import 'package:firebasedddresocoder/domain/core/value_objects.dart';
import 'package:firebasedddresocoder/domain/notes/todo_item.dart';
import 'package:firebasedddresocoder/domain/notes/value_object_note.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'note.freezed.dart';

@freezed
abstract class Note implements _$Note {
  const Note._();

  const factory Note({
    @required UniqueId id,
    @required NoteBody body,
    @required NoteColor color,
    @required List3<TodoItem> todos,
  }) = _Note;

  factory Note.empty() => Note(
        id: UniqueId(),
        body: NoteBody(''),
        color: NoteColor(NoteColor.predefinedColors[0]),
        todos: List3(emptyList()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return body.failureOrUnit
        .andThen(todos.failureOrUnit)
        .andThen(todos
            .getOrCrash()
            // Getting the failureOption from todoItem Entity - Not a failureOrUnit from Value Object
            .map(
              (todoItem) => todoItem.failureOption,
            )
            // if we can't get 0th element, the List is empty. In such a cas It's valid.
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}
