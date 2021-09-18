//
//  ContentView.swift
//  BRSGuessTheFlag
//
//  Created by BrysonSaclausa on 9/17/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Tape me!") {
                print("Button was taped")
            }//basic button
            
            Button(action: {
                print("Button was tapped")
            }) {
                Text("Tapp me")
            }//when you want to incorporate images in your buttons
            
            Button(action: {
                print("Button was tapped")
            }) {
                Image(systemName: "pencil")
            }//example
            
            Button(action: {
                print("Edit button was tapped")
            }) {
                HStack(spacing: 10) {
                    Image(systemName: "pencil")
                    Text("Edit")
                }
            }//example

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
