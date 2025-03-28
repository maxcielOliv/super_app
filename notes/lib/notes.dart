
import 'notes_platform_interface.dart';

class Notes {
  Future<String?> getPlatformVersion() {
    return NotesPlatform.instance.getPlatformVersion();
  }
}
