import 'package:to_do_bloc/app/data/models/task_model.dart';

class TaskRepository {
  final List<TaskModel> _tasks = [];

  Future<List<TaskModel>> getTasks() async {
    _tasks.addAll([
      TaskModel(name: "Compras no mercado"),
      TaskModel(name: "Ir para academia"),
      TaskModel(name: "Estudar Flutter"),
      TaskModel(name: "Estudar Inglês"),
    ]);

    return Future.delayed(
      const Duration(seconds: 2),
      () => _tasks,
    );
  }

  Future<List<TaskModel>> postTask(TaskModel task) async {
    _tasks.add(task);

    return Future.delayed(
      const Duration(seconds: 2),
      () => _tasks,
    );
  }

  Future<List<TaskModel>> deleteTask(TaskModel task) async {
    _tasks.remove(task);

    return Future.delayed(
      const Duration(seconds: 2),
      () => _tasks,
    );
  }
}
