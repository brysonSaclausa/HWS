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
                    Image(systemName: "pencil").renderingMode(.original)
                    Text("Edit")
                }
                
            }//example
            /*
             Tip: If you find that your images have become filled in with a color, for example showing as solid blue rather than your actual picture, this is probably SwiftUI coloring them to show that they are tappable. To fix the problem, use the renderingMode(.original) modifier to force SwiftUI to show the original image rather than the recolored version.
             */

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
