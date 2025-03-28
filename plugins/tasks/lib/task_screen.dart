import 'package:commons/commons.dart';
import 'package:commons/provider/focus_hub_provider.dart';
import 'package:flutter/material.dart';
import 'package:tasks/widget/add_task.dart';


class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FocusHubProvider>(context);
    final List<Map<String, dynamic>> tasks = provider.tasks;
    return Scaffold(
      appBar: AppBar(title: Text('Gerenciar Tarefas')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder:
                  (context, index) => ListTile(
                    leading: IconButton(
                      onPressed: () {
                        Provider.of<FocusHubProvider>(
                          context,
                          listen: false,
                        ).toggleTaskCompletion(index);
                      },
                      icon:
                          tasks[index]['completed']
                              ? Icon(Icons.square, color: Colors.green,)
                              : Icon(Icons.square_outlined),
                    ),
                    title: Text(tasks[index]['title']),
                    trailing: IconButton(
                      onPressed: () {
                        Provider.of<FocusHubProvider>(
                          context,
                          listen: false,
                        ).removeTask(index);
                      },
                      icon: Icon(Icons.delete, color: Colors.red),
                    ),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AddTask(),
          ),
        ],
      ),
    );
  }
}
