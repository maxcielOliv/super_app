//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <notes/notes_plugin.h>
#include <pomodoro/pomodoro_plugin.h>
#include <tasks/tasks_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) notes_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "NotesPlugin");
  notes_plugin_register_with_registrar(notes_registrar);
  g_autoptr(FlPluginRegistrar) pomodoro_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "PomodoroPlugin");
  pomodoro_plugin_register_with_registrar(pomodoro_registrar);
  g_autoptr(FlPluginRegistrar) tasks_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "TasksPlugin");
  tasks_plugin_register_with_registrar(tasks_registrar);
}
