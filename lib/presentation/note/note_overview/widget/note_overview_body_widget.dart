import 'package:firebasedddresocoder/application/notes/note_watcher/note_watcher_bloc.dart';
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
                  return Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  );
                } else {
                  return Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  );
                }
              },
            );
          },
          loadFailure: (_) => Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
        );
      },
    );
  }
}
