//
//  ContentView.swift
//  BRSWeSplit
//
//  Created by BrysonSaclausa on 9/10/21.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = ""
    
    var body: some View {
        VStack {
            
            Picker("Pick your student", selection: $selectedStudent) {
                ForEach(0 ..< students.count) {
                    Text(self.students[$0])
                }
                
            }
            
            
      
        }
        
//        Form {
////            ForEach(0 ..< 22) { number in
////                Text("Row \(number)")
////            }
                                    //does the same thing bottom is shorthand syntax
//            ForEach(0 ..< 22) {
//                Text("Row \($0)")
//            }
//        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
