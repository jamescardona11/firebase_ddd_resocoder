part of 'note_watcher_bloc.dart';

@freezed
abstract class NoteWatcherEvent with _$NoteWatcherEvent {
  const factory NoteWatcherEvent.watchAllStarted() = _WatchallStarted;
  const factory NoteWatcherEvent.watchUncompletedStarted() = _WatchallUncompletedStarted;
  const factory NoteWatcherEvent.notesReceived(Either<NoteFailure, KtList<Note>> failureOrNotes) = _NotesReceived;
}
