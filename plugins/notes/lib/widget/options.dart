import 'package:flutter/material.dart';
import 'package:commons/provider/focus_hub_provider.dart';
import 'package:provider/provider.dart';

class Options extends StatelessWidget {
  final int index;
  final List<String> notas;

  const Options({super.key, required this.index, required this.notas});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        if (value == 'task') {
          Provider.of<FocusHubProvider>(context, listen: false)
              .addTask(notas[index]);
          Provider.of<FocusHubProvider>(context, listen: false)
              .removeNote(index);
        } else if (value == 'delete') {
          Provider.of<FocusHubProvider>(context, listen: false)
              .removeNote(index);
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'task',
          child: Row(
            children: [
              Icon(Icons.assignment, color: Colors.blue),
              SizedBox(width: 8),
              Text('Transformar em Tarefa'),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'delete',
          child: Row(
            children: [
              Icon(Icons.delete, color: Colors.red),
              SizedBox(width: 8),
              Text('Excluir'),
            ],
          ),
        ),
      ],
      icon: Icon(Icons.more_vert),
    );
  }
}
