import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:super_app/data/provider/focus_hub_provider.dart';

class NoteOptions extends StatelessWidget {
  final int index;
  final List<String> notas;
  const NoteOptions({super.key,required this.index, required this.notas});

  @override
  Widget build(BuildContext context) {
    return IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Provider.of<FocusHubProvider>(
                                      context,
                                      listen: false,
                                    ).addTask(notas[index]);
                                    Provider.of<FocusHubProvider>(
                                      context,
                                      listen: false,
                                    ).removeNote(index);
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Transformar em Tarefa'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Provider.of<FocusHubProvider>(
                                      context,
                                      listen: false,
                                    ).removeNote(index);
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Excluir'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.more_vert),
                    );
  }
}