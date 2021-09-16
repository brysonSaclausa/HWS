//
//  ContentView.swift
//  BRSWeSplit
//
//  Created by BrysonSaclausa on 9/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    let tipPercentages = [10, 15, 20, 25, 0]
        
    
    
    var body: some View {
        Form {
            Text("hello WeSplit")
            Section {
                Text("hello WeSplit")
                TextField("Amount", text: $checkAmount)
                    .keyboardType(.decimalPad)
            }
            Section {
                Text("$ \(checkAmount)")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*
WeSplit is a check sharing app, where users need to input three pieces of data to use app:
 1)enter cost of check 2)how many people are spliting and 3)how much you want to tip/ percentage

 1. create @State properties to contentview struct
 2. 2 way bind checkAmount to textfield text
 
 
 */
