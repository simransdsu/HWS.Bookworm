//
//  ContentView.swift
//  Bookworm
//
//  Created by Simran Preet Narang on 2022-06-12.
//

import SwiftUI

struct ContentView: View {
    
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>
    @Environment(\.managedObjectContext) var moc
    
    @State var name: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Name", text: $name)
                        .textFieldStyle(.roundedBorder)
                    Button("Add") {
                        let student = Student(context: moc)
                        student.id = UUID()
                        student.name = name
                        try? moc.save()
                        name = ""
                    }.disabled(name.isEmpty)
                }
                .padding()
                
                List(students) { student in
                    Text(student.name ?? "Unknown")
                }
                
                
            }
            
            .navigationTitle("Students")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
