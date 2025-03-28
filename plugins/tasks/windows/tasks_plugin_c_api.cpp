#include "include/tasks/tasks_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "tasks_plugin.h"

void TasksPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  tasks::TasksPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
