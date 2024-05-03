part of 'todo_bloc.dart';

class TodoState extends Equatable {
  final List<TodoModel> todoList;
  const TodoState({
    this.todoList = const [],
  });

  TodoState copyWith({List<TodoModel>? todoList}) {
    return TodoState(
      todoList: todoList ?? this.todoList,
    );
  }

  @override
  List<Object> get props => [todoList];
}
