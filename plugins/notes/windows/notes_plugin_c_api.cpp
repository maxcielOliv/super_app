#include "include/notes/notes_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "notes_plugin.h"

void NotesPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  notes::NotesPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
