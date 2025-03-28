import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'notes_method_channel.dart';

abstract class NotesPlatform extends PlatformInterface {
  /// Constructs a NotesPlatform.
  NotesPlatform() : super(token: _token);

  static final Object _token = Object();

  static NotesPlatform _instance = MethodChannelNotes();

  /// The default instance of [NotesPlatform] to use.
  ///
  /// Defaults to [MethodChannelNotes].
  static NotesPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NotesPlatform] when
  /// they register themselves.
  static set instance(NotesPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
