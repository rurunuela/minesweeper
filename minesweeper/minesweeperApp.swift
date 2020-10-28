//
//  minesweeperApp.swift
//  minesweeper
//
//  Created by Richard Urunuela on 25/10/2020.
//

import SwiftUI

@main
struct minesweeperApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(Game())
        }
    }
}
