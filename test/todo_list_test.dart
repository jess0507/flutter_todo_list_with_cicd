import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_todo_list_with_cicd/domain/model/importance.dart';
import 'package:flutter_todo_list_with_cicd/domain/model/todo.dart';
import 'package:flutter_todo_list_with_cicd/pages/todo_list/model/todo_list_page_view_model_state.dart';
import 'package:flutter_todo_list_with_cicd/pages/todo_list/todo_list_page.dart';
import 'package:flutter_todo_list_with_cicd/pages/todo_list/todo_list_page_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'mock_list_view_model.dart';

final todoList = [
    Todo(
    id: 1,
    content: 'Todo1',
    isCompleted: false,
    importance: Importance.medium,
    createAt: DateTime.now().millisecondsSinceEpoch,
  ),
  Todo(
    id: 2,
    content: 'Todo2',
    isCompleted: true,
    importance: Importance.high,
    createAt: DateTime.now().millisecondsSinceEpoch,
  ),
];

void main() {
  testWidgets('when the viewmodel provides a list of todos, the UI should correctly display two items', (WidgetTester tester) async {
    final mockState = TodoListPageViewModelState(todos: todoList);
    final MockTodoListViewModel mockTodoListPageViewmodel = MockTodoListViewModel(mockState);

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          todoListPageViewmodel.overrideWith((ref) => mockTodoListPageViewmodel),
        ],
        child: const MaterialApp(
          home: TodoListPage(),
        ),
      ),
    );
    expect(find.byType(ListTile), findsNWidgets(2));
  });
}
