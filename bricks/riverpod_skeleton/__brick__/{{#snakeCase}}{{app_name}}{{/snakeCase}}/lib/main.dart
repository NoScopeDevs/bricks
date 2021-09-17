import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/app/app.dart';

Future<void> main() async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  // Run the app and pass its dependencies to it.
  runApp(const App());
}
