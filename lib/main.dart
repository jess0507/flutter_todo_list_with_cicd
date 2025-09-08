import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';

import 'todo_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Fimber.plantTree(DebugTree());

  Fimber.d('main()');

  runApp(const TodoApp());
}
