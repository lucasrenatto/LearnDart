import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameCubit extends Cubit<String> {
  NameCubit(String name) : super(name);
  void change(String name) => emit(name);
}

class NameContainer extends StatelessWidget {
  const NameContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NameCubit("Guilherme"),
      child: NameView(),
    );
  }
}

class NameView extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Name"),
      ),
      body: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: "Desired name:",
            ),
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  final name = _nameController.text;
                  context.read<NameCubit>().change(name);
                  Navigator.pop(context);
                },
                child: const Text("Change"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
