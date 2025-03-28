#ifndef FLUTTER_PLUGIN_NOTES_PLUGIN_H_
#define FLUTTER_PLUGIN_NOTES_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace notes {

class NotesPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  NotesPlugin();

  virtual ~NotesPlugin();

  // Disallow copy and assign.
  NotesPlugin(const NotesPlugin&) = delete;
  NotesPlugin& operator=(const NotesPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace notes

#endif  // FLUTTER_PLUGIN_NOTES_PLUGIN_H_
