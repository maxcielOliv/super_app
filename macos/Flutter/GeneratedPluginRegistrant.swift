//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation

import notes
import pomodoro
import tasks

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  NotesPlugin.register(with: registry.registrar(forPlugin: "NotesPlugin"))
  PomodoroPlugin.register(with: registry.registrar(forPlugin: "PomodoroPlugin"))
  TasksPlugin.register(with: registry.registrar(forPlugin: "TasksPlugin"))
}
