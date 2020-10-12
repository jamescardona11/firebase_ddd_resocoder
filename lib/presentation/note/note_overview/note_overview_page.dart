import 'package:auto_route/auto_route.dart';
import 'package:firebasedddresocoder/application/auth/bloc/auth_bloc.dart';
import 'package:firebasedddresocoder/application/notes/note_actor/note_actor_bloc.dart';
import 'package:firebasedddresocoder/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:firebasedddresocoder/injection.dart';
import 'package:firebasedddresocoder/presentation/note/note_overview/widget/note_overview_body_widget.dart';
import 'package:firebasedddresocoder/presentation/note/note_overview/widget/uncompleted_switch.dart';
import 'package:firebasedddresocoder/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteWatcherBloc>(
          create: (_) => getIt<NoteWatcherBloc>()..add(const NoteWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<NoteActorBloc>(
          create: (_) => getIt<NoteActorBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) => ExtendedNavigator.of(context).pushAndRemoveUntil(
                  Routes.signPage,
                  (route) => false,
                ),
                orElse: () {},
              );
            },
          ),
          BlocListener<NoteActorBloc, NoteActorState>(
            listener: (context, state) {
              state.maybeMap(
                deletedFailure: (state) {
                  FlushbarHelper.createError(
                    duration: const Duration(milliseconds: 5000),
                    message: state.noteFailure.when(
                      unexpected: () => 'Unexpected error occurred while deleting, please try again',
                      permissionDenied: () => 'insufficient permissions',
                      unableToUpdate: () => 'Impossible error (CheckApp)',
                    ),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Notes'),
            leading: IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
              },
            ),
            actions: [
              UnCompletedSwitch(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              ExtendedNavigator.of(context).pushNoteFormPage(editedNote: null);
            },
            child: const Icon(Icons.add),
          ),
          body: NotesOverviewBody(),
        ),
      ),
    );
  }
}
