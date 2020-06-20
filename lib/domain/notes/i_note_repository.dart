import 'package:dartz/dartz.dart';
import 'package:firebasedddresocoder/domain/notes/note.dart';
import 'package:firebasedddresocoder/domain/notes/note_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class INoteRepository {
  // watch notes
  // watch uncompleted notes
  // CUD != C Read UD, read is split in other class

  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();
  Future<Either<NoteFailure, Unit>> create(Note note);
  Future<Either<NoteFailure, Unit>> update(Note note);
  Future<Either<NoteFailure, Unit>> delete(Note note);
  
}
