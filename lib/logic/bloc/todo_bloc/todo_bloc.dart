import 'package:bloc/bloc.dart';
import 'package:bloc_project/data/todo_model.dart';
import 'package:equatable/equatable.dart';
part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final List<TodoModel> todoList = [];
  TodoBloc() : super(const TodoState()) {
    on<AddTodoEvent>(_addTodoEvent);
    on<RemoveTodoEvent>(_removeTodoEvent);
    on<MarkDoneTodoEvent>(_markDoneTodoEvent);
  }

  void _addTodoEvent(AddTodoEvent event, Emitter<TodoState> emit) {
    todoList.add(event.task);
    return emit(state.copyWith(todoList: List.from(todoList)));
  }

  void _removeTodoEvent(RemoveTodoEvent event, Emitter<TodoState> emit) {
    todoList.removeAt(event.index);
    return emit(state.copyWith(todoList: List.from(todoList)));
  }

  void _markDoneTodoEvent(MarkDoneTodoEvent event, Emitter<TodoState> emit) {
    todoList[event.index] = TodoModel(
      id: event.todoModel.id,
      task: event.todoModel.task,
      description: event.todoModel.description,
      isDone: !event.todoModel.isDone,
    );

    return emit(state.copyWith(todoList: List.from(todoList)));
  }
}
