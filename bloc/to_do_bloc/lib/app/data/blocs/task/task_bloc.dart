import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:to_do_bloc/app/data/blocs/task/task_event.dart';
import 'package:to_do_bloc/app/data/blocs/task/task_state.dart';
import 'package:to_do_bloc/app/data/models/task_model.dart';
import 'package:to_do_bloc/app/data/repositories/task_repository.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final _repo = TaskRepository();

  TaskBloc() : super(TaskInitialState()) {
    on(_mapEventToState);
  }

  void _mapEventToState(TaskEvent event, Emitter emit) async {
    List<TaskModel> tasks = [];
 
    emit(TaskLoadingState());

    if (event is GetTasks) {
      tasks = await _repo.getTasks();
    } else if (event is PostTasks) {
      tasks = await _repo.postTask(event.task);
    } else if (event is DeleteTasks) {
      tasks = await _repo.deleteTask(event.task);
    }

    emit(TaskLoadedState(tasks: tasks));
  }
}
