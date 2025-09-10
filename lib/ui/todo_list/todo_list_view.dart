import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/key/widget_key.dart';
import 'todo_list_page_view_model.dart';

class TodoListView extends ConsumerWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref
        .watch(todoListPageViewmodel.select((value) => value.todos))
        .reversed
        .toList();

    return ListView.builder(
      key: const ValueKey(WidgetKey.todoList),
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];
        return Dismissible(
          key: Key('${WidgetKey.todoDismissiblePrefix}${todo.id}'),
          onDismissed: (direction) async {
            await ref.read(todoListPageViewmodel.notifier).delete(todo: todo);
          },
          background: Container(
            color: Colors.red,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.delete, color: Colors.white),
                SizedBox(width: 16),
              ],
            ),
          ),
          child: ListTile(
            key: ValueKey('${WidgetKey.todoListTilePrefix}${todo.id}'),
            title: Text(todo.content),
            leading: IconButton(
              icon: Icon(todo.isCompleted
                  ? Icons.check_box
                  : Icons.check_box_outline_blank),
              onPressed: () async {
                await ref
                    .read(todoListPageViewmodel.notifier)
                    .toggleCompleteStatus(todo: todo);
              },
            ),
            trailing: Text(
              todo.importance.name,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        );
      },
    );
  }
}
