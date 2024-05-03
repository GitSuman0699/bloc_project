import 'dart:math';

import 'package:bloc_project/data/todo_model.dart';
import 'package:bloc_project/logic/bloc/todo_bloc/todo_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<TodoBloc, TodoState>(
          buildWhen: (previous, current) =>
              previous.todoList != current.todoList,
          builder: (context, state) {
            if (state.todoList.isEmpty) {
              return const Center(
                child: Text("No task added"),
              );
            } else {
              return ListView.builder(
                itemCount: state.todoList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.todoList[index].task),
                    subtitle: Text(state.todoList[index].description),
                    trailing: Checkbox(
                      value: state.todoList[index].isDone,
                      onChanged: (value) {
                        context.read<TodoBloc>().add(
                              MarkDoneTodoEvent(
                                todoModel: state.todoList[index],
                                index: index,
                              ),
                            );
                      },
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                TextEditingController taskController = TextEditingController();
                TextEditingController descriptionControler =
                    TextEditingController();
                return Dialog(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: taskController,
                          decoration: const InputDecoration(
                            hintText: "Add task here",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: descriptionControler,
                          decoration: const InputDecoration(
                            hintText: "Add description here",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                              context.read<TodoBloc>().add(
                                    AddTodoEvent(
                                      task: TodoModel(
                                        id: Random().nextInt(10),
                                        task: taskController.text,
                                        description: descriptionControler.text,
                                      ),
                                    ),
                                  );
                            },
                            child: const Text("ADD TASK"),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
