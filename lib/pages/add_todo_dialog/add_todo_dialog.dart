import 'package:flutter/material.dart';

import '../../domain/model/todo.dart';
import 'widget/add_todo_view.dart';

class AddTodoDialog {
  static Future<Todo?> show({required BuildContext context}) async {
    final result = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const AddTodoView();
      },
    );
    return result;
  }
}
