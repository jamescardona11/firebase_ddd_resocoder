import 'package:firebasedddresocoder/injection.dart';
import 'package:firebasedddresocoder/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
