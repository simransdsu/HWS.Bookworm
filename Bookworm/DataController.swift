//
//  DataController.swift
//  Bookworm
//
//  Created by Simran Preet Narang on 2022-06-12.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        
        container.loadPersistentStores { description, error in
            
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
                return
            }
        }
    }
}
