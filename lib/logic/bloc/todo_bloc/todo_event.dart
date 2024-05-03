part of 'todo_bloc.dart';

sealed class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object> get props => [];
}

class AddTodoEvent extends TodoEvent {
  final TodoModel task;
  const AddTodoEvent({required this.task});

  @override
  List<Object> get props => [task];
}

class RemoveTodoEvent extends TodoEvent {
  final int index;
  const RemoveTodoEvent({required this.index});

  @override
  List<Object> get props => [index];
}

class MarkDoneTodoEvent extends TodoEvent {
  final TodoModel todoModel;
  final int index;
  const MarkDoneTodoEvent({
    required this.todoModel,
    required this.index,
  });

  @override
  List<Object> get props => [todoModel, index];
}
