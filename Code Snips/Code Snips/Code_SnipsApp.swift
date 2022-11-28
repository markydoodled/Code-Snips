//
//  Code_SnipsApp.swift
//  Code Snips
//
//  Created by Mark Howard on 22/11/2022.
//

import SwiftUI
import Preferences
import CodeMirror_SwiftUI
import KeyboardShortcuts

@main
struct Code_SnipsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            SidebarCommands()
            ToolbarCommands()
            TextEditingCommands()
            TextFormattingCommands()
        }
        MenuBarExtra("Menu Bar", systemImage: "note.text") {
            MenuBarView()
        }
        /*Settings {
            SettingsView()
        }*/
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    private lazy var settingsWindowController = SettingsWindowController(
        panes: [
            Preferences.Pane(identifier: "settings", title: "Settings", toolbarIcon: NSImage(systemSymbolName: "plus", accessibilityDescription: "Plus")!) {
                SettingsView()
            }
        ]
    )
}
