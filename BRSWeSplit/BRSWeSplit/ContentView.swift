//
//  ContentView.swift
//  BRSWeSplit
//
//  Created by BrysonSaclausa on 9/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapCount = 0
    @State private var name = ""
    
    var body: some View {
        VStack {
            Text("Hello, werld!, the count is \(tapCount)")
                .padding()
            Button("Tap Count \(tapCount)") {
                self.tapCount += 1
            }
            Form {
                TextField("Enter Your Name", text: $name) //$ introduces two-way binding, we bind the text field so it shows the value of our property 'name', and also writes it back if any changes are made
                Text("Your name is: \(name)")
            }
            
        }//
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
