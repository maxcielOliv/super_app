import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'notes_platform_interface.dart';

/// An implementation of [NotesPlatform] that uses method channels.
class MethodChannelNotes extends NotesPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('notes');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
