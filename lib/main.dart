import 'package:firebase_core/firebase_core.dart';
import 'package:firebasedddresocoder/injection.dart';
import 'package:firebasedddresocoder/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();

  runApp(AppWidget());
}
