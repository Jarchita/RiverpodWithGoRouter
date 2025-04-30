import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/providers/todo_provider.dart';

import '../../models/todo_model.dart';

class TodoScreen extends ConsumerWidget {
  TodoScreen({super.key});

  final inputController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextFormField(
            controller: inputController,
            decoration: InputDecoration(border: OutlineInputBorder()),
            onFieldSubmitted:
                (value) => {
              showSnackBar(context),
              ref
                  .read(todoListProvider.notifier)
                  .add(
                TodoModel(
                  id: DateTime.now().toString(),
                  description: value,
                  completed: false,
                ),
              ),
              inputController.clear(),
            },
          ),
          SizedBox(height: 16),
          Consumer(builder: (context, ref, child) {
            final todoList = ref.watch(todoListProvider);
            return ListView.builder(
              shrinkWrap: true,
              itemCount: todoList.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  title: Text(todoList[index].description,style: todoList[index].completed?
                  TextStyle(decoration: TextDecoration.lineThrough):null,),
                  trailing: Checkbox(value: todoList[index].completed, onChanged: (value){
                    ref.read(todoListProvider.notifier).toggleTodo(todoList[index].id);
                  } ),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}

showSnackBar(context) => ScaffoldMessenger.of(context).showSnackBar(snackbar);
const snackbar = SnackBar(content: Text("Todo Added"));
