// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebasedddresocoder/infraestructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebasedddresocoder/infraestructure/auth/firebase_auth_facade.dart';
import 'package:firebasedddresocoder/domain/auth/i_auth_facade.dart';
import 'package:firebasedddresocoder/infraestructure/notes/note_repository.dart';
import 'package:firebasedddresocoder/domain/notes/i_note_repository.dart';
import 'package:firebasedddresocoder/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:firebasedddresocoder/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:firebasedddresocoder/application/auth/bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(g<FirebaseAuth>(), g<GoogleSignIn>()));
  g.registerLazySingleton<INoteRepository>(
      () => NoteRepository(g<Firestore>()));
  g.registerFactory<NoteWatcherBloc>(
      () => NoteWatcherBloc(g<INoteRepository>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
