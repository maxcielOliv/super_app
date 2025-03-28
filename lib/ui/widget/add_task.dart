import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:super_app/data/provider/focus_hub_provider.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    final task = TextEditingController();

    return ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Nova Tarefa'),
                      content: TextFormField(
                        controller: task,
                        decoration: InputDecoration(
                          label: Text('Digite sua tarefa...'),
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Cancelar'),
                        ),
                        TextButton(
                          onPressed: () {
                            Provider.of<FocusHubProvider>(
                              context,
                              listen: false,
                            ).addTask(task.text);
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Salvar',
                            style: TextStyle(backgroundColor: Colors.white),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Adicionar Tarefa'),
            );
  }
}