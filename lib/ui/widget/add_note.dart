import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:super_app/data/provider/focus_hub_provider.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    final nota = TextEditingController();

    return ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Nova Nota'),
                      content: TextFormField(
                        controller: nota,
                        decoration: InputDecoration(
                          label: Text('Digite sua nota...'),
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
                            ).addNote(nota.text);
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
              child: Text('Adicionar nota'),
            );
  }
}