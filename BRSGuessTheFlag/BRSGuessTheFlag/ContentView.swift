//
//  ContentView.swift
//  BRSGuessTheFlag
//
//  Created by BrysonSaclausa on 9/17/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
//            Color.red.frame(width: 200, height: 200, alignment: .center)
//            Color(red: 1, green: 0.8, blue: 0)
            Color.red.ignoresSafeArea(.all)
            Text("Your content")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
