//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <notes/notes_plugin_c_api.h>
#include <pomodoro/pomodoro_plugin_c_api.h>
#include <tasks/tasks_plugin_c_api.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  NotesPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("NotesPluginCApi"));
  PomodoroPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("PomodoroPluginCApi"));
  TasksPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("TasksPluginCApi"));
}
