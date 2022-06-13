//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Simran Preet Narang on 2022-06-12.
//

import SwiftUI

@main
struct BookwormApp: App {
    
    @StateObject private var dataControllerr = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataControllerr.container.viewContext)
        }
    }
}
