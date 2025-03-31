//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation

import notes
import pomodoro
import sqflite_darwin
import tasks

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  NotesPlugin.register(with: registry.registrar(forPlugin: "NotesPlugin"))
  PomodoroPlugin.register(with: registry.registrar(forPlugin: "PomodoroPlugin"))
  SqflitePlugin.register(with: registry.registrar(forPlugin: "SqflitePlugin"))
  TasksPlugin.register(with: registry.registrar(forPlugin: "TasksPlugin"))
}
