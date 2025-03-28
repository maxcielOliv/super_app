import 'package:flutter_test/flutter_test.dart';
import 'package:notes/notes.dart';
import 'package:notes/notes_platform_interface.dart';
import 'package:notes/notes_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNotesPlatform
    with MockPlatformInterfaceMixin
    implements NotesPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NotesPlatform initialPlatform = NotesPlatform.instance;

  test('$MethodChannelNotes is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNotes>());
  });

  test('getPlatformVersion', () async {
    Notes notesPlugin = Notes();
    MockNotesPlatform fakePlatform = MockNotesPlatform();
    NotesPlatform.instance = fakePlatform;

    expect(await notesPlugin.getPlatformVersion(), '42');
  });
}
