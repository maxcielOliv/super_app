#ifndef FLUTTER_PLUGIN_TASKS_PLUGIN_H_
#define FLUTTER_PLUGIN_TASKS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace tasks {

class TasksPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  TasksPlugin();

  virtual ~TasksPlugin();

  // Disallow copy and assign.
  TasksPlugin(const TasksPlugin&) = delete;
  TasksPlugin& operator=(const TasksPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace tasks

#endif  // FLUTTER_PLUGIN_TASKS_PLUGIN_H_
