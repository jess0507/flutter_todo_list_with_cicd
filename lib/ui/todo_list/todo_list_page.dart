import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

import '../../core/key/lokalise_key.dart';
import '../../core/key/widget_key.dart';
import '../add_todo_dialog/add_todo_dialog.dart';
import 'todo_list_view.dart';

class TodoListPage extends ConsumerWidget {
  static const routeName = '/todo_list_page';

  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LokaliseKey.todoListPage),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: const TodoListView(),
      ),
      floatingActionButton: FloatingActionButton(
        key: const ValueKey(WidgetKey.addTodoFloatingButton),
        onPressed: () => AddTodoDialog.show(context: context),
        child: const Icon(Icons.add),
      ),
    );
  }
}
