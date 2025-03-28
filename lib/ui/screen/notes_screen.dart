import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:super_app/data/provider/focus_hub_provider.dart';
import 'package:super_app/ui/widget/add_note.dart';
import 'package:super_app/ui/widget/note_options.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FocusHubProvider>(context);
    final List<String> notas = provider.notes;
    return Scaffold(
      appBar: AppBar(title: Text('Bloco de Notas')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: notas.length,
              itemBuilder:
                  (context, index) => ListTile(
                    title: Text(notas[index]),
                    trailing: NoteOptions(
                      notas: notas,
                      index: index,
                    ),
                  ),
            ),
          ),
          AddNote(),
        ],
      ),
    );
  }
}
