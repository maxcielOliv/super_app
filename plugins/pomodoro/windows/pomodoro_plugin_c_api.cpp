#include "include/pomodoro/pomodoro_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "pomodoro_plugin.h"

void PomodoroPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  pomodoro::PomodoroPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
