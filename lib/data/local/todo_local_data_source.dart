import '../base/base_database.dart';
import '../model/todo_model.dart';
import 'todo_database.dart';
import '../base/base_local_data_srouce.dart';

class TodoLocalDataSource extends BaseLocalDataSource<TodoModel>{
  @override
  String get tag => 'TodoLocalDataSource';

  @override
  BaseDatabase<TodoModel> get database => TodoDatabase.instance as BaseDatabase<TodoModel>;
}