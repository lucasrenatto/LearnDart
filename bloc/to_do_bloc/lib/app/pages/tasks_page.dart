import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_bloc/app/data/blocs/task/task_bloc.dart';
import 'package:to_do_bloc/app/data/blocs/task/task_event.dart';
import 'package:to_do_bloc/app/data/blocs/task/task_state.dart';
import 'package:to_do_bloc/app/data/models/task_model.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  late final TaskBloc _taskBloc;
  final TextEditingController taskNameController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _taskBloc = TaskBloc();
    _taskBloc.add(GetTasks());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Bloc Pattern'),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<TaskBloc, TaskState>(
            bloc: _taskBloc,
            builder: (context, state) {
              if (state is TaskLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is TaskLoadedState) {
                final List<TaskModel> list = state.tasks;
                return Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.75,
                      child: ListView.separated(
                        separatorBuilder: (_, __) => const Divider(),
                        itemCount: list.length,
                        itemBuilder: (_, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              child: Center(
                                child: Text(
                                  list[index].name[0],
                                ),
                              ),
                            ),
                            title: Text(list[index].name),
                            trailing: IconButton(
                              onPressed: () {
                                _taskBloc.add(
                                  DeleteTasks(task: list[index]),
                                );
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.width * 0.05,
                          0,
                          MediaQuery.of(context).size.width * 0.05,
                          0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: TextField(
                              controller: taskNameController,
                              decoration: const InputDecoration(
                                labelText: "Task Name",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: ElevatedButton(
                                onPressed: () {
                                  _taskBloc.add(
                                    PostTasks(
                                        task: TaskModel(
                                            name: taskNameController.text)),
                                  );
                                  taskNameController.text = "";
                                },
                                child: const Icon(Icons.add)),
                          )
                        ],
                      ),
                    )
                  ],
                );
              } else {
                return const Text("Error");
              }
            }),
      ),
    );
  }

  @override
  void dispose() {
    _taskBloc.close();
    super.dispose();
  }
}
