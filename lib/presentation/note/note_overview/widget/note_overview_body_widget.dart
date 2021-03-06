import 'package:firebasedddresocoder/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:firebasedddresocoder/presentation/note/note_overview/widget/critical_failure_display_widget.dart';
import 'package:firebasedddresocoder/presentation/note/note_overview/widget/error_note_card_widget.dart';
import 'package:firebasedddresocoder/presentation/note/note_overview/widget/note_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
      builder: (context, state) {
        return state.when(
          initial: () => Container(),
          loadInProgress: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (notes) {
            return ListView.builder(
              itemCount: notes.size,
              itemBuilder: (context, index) {
                final note = notes[index];
                if (note.failureOption.isSome()) {
                  return ErrorNoteCard(note: note);
                } else {
                  return NoteCardWidget(note: note);
                }
              },
            );
          },
          loadFailure: (failure) => CriticalFailureDisplay(failure: failure),
        );
      },
    );
  }
}
