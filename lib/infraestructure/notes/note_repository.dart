import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasedddresocoder/domain/notes/i_note_repository.dart';
import 'package:firebasedddresocoder/domain/notes/note.dart';
import 'package:firebasedddresocoder/domain/notes/note_failure.dart';
import 'package:firebasedddresocoder/infraestructure/core/firestore_helpers.dart';
import 'package:firebasedddresocoder/infraestructure/notes/note_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:rxdart/rxdart.dart';

import 'note_dtos.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  final FirebaseFirestore _firestore;

  NoteRepository(this._firestore);

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    //yield left(const NoteFailure.permissionDenied());
    yield* userDoc.noteCollection
        .orderBy(
          'serverTimeStamp',
          descending: true,
        )
        .snapshots()
        .map(
      (snapshot) {
        //debugPrint('Documents: ${snapshot.documents}');
        return right<NoteFailure, KtList<Note>>(KtList.from(
          snapshot.docs.map(
            (doc) => NoteDto.fromFirestore(doc).toDomain(),
          ),
        ));
      },
    ).onErrorReturnWith(
      (e) {
        if (e is FirebaseAuthException && e.message.contains('PERMISSION_DENIED')) {
          return left(const NoteFailure.permissionDenied());
        } else {
          //log.error(e.toString());
          return left(const NoteFailure.unexpected());
        }
      },
    );
  }

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
        .orderBy(
          'serverTimeStamp',
          descending: true,
        )
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) => NoteDto.fromFirestore(doc).toDomain()))
        .map(
          (notes) => right<NoteFailure, KtList<Note>>(
            KtList.from(notes.where((note) => note.todos.getOrCrash().any((todoItem) => !todoItem.done))),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseAuthException && e.message.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.permissionDenied());
      } else {
        //log.error(e.toString());
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<NoteFailure, Unit>> create(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);
      await userDoc.noteCollection.doc(noteDto.id).setData(noteDto.toJson());

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e is FirebaseAuthException && e.message.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.permissionDenied());
      } else {
        //log.error(e.toString());
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);
      await userDoc.noteCollection.doc(noteDto.id).updateData(noteDto.toJson());

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e is FirebaseAuthException && e.message.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.permissionDenied());
      } else if (e.message.contains('NOT_FOUND')) {
        //log.error(e.toString());
        return left(const NoteFailure.permissionDenied());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteId = note.id.getOrCrash();
      await userDoc.noteCollection.doc(noteId).delete();

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e is FirebaseAuthException && e.message.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.permissionDenied());
      } else if (e.message.contains('NOT_FOUND')) {
        //log.error(e.toString());
        return left(const NoteFailure.permissionDenied());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }
}
