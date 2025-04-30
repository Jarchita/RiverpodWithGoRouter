
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_demo/models/todo_model.dart';

part 'todo_provider.g.dart';

@riverpod
class TodoList extends _$TodoList {
  @override
  List<TodoModel> build() => [];

  void add(TodoModel todo) {
    state = [...state, todo];
  }

  void toggleTodo(String id) {
    state = state.map((todo) => todo.id == id ? todo.copyWith(completed: !todo.completed) : todo).toList();
  }
}