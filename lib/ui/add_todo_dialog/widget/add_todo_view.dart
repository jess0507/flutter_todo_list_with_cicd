import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/entity/todo.dart';
import '../../../core/key/lokalise_key.dart';
import '../../../core/key/widget_key.dart';
import '../../todo_list/todo_list_page_view_model.dart';
import '../add_todo_view_model.dart';
import 'importance_choice.dart';

class AddTodoView extends ConsumerWidget {
  const AddTodoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> addTodo(Todo todo) async {
      await ref.read(todoListPageViewmodel.notifier).addTodo(todo);
      if (context.mounted) {
        Navigator.of(context).pop();
      }
    }

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(LokaliseKey.cancel),
                ),
                Consumer(
                  builder: (context, ref, child) {
                    final todo = ref
                        .watch(addTodoViewmodel.select((value) => value.todo));
                    return TextButton(
                      key: const ValueKey(WidgetKey.addTodoButton),
                      onPressed:
                          todo.content.isEmpty ? null : () => addTodo(todo),
                      child: const Text(LokaliseKey.add),
                    );
                  },
                ),
              ],
            ),
            TextField(
              key: const ValueKey(WidgetKey.contentTextField),
              onChanged: (value) {
                ref.read(addTodoViewmodel.notifier).updateTodo(content: value);
              },
              decoration:
                  const InputDecoration(labelText: LokaliseKey.todoContent),
            ),
            const SizedBox(height: 32),
            const Text(LokaliseKey.importance, style: TextStyle(fontSize: 14)),
            const SizedBox(height: 4),
            Row(
              children: [
                Expanded(
                  child: ImportanceChoices(
                    key: const ValueKey(WidgetKey.importanceChoices),
                    onChoicePressed: (importance) {
                      ref
                          .read(addTodoViewmodel.notifier)
                          .updateTodo(importance: importance);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
