import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matt_murdock/app.dart';

void main() {
  runApp(const ProviderScope(
      child: MattMurdock(
    appBarTitle: 'This is a portafolio build Dev',
    color: Colors.amber,
    title: 'Demo App',
  )));
}
