import 'package:equatable/equatable.dart';

class TodoModel extends Equatable {
  final int id;
  final String task;
  final String description;
  final bool isDone;
  const TodoModel({
    required this.id,
    required this.task,
    required this.description,
    this.isDone = false,
  });

  TodoModel copyWith({
    int? id,
    String? task,
    String? description,
    bool? isDone,
  }) {
    return TodoModel(
      id: id ?? this.id,
      task: task ?? this.task,
      description: description ?? this.description,
      isDone: isDone ?? this.isDone,
    );
  }

  @override
  List<Object?> get props => [id, task, description, isDone];
}
