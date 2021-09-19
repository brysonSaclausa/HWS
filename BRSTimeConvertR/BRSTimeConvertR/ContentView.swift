//
//  ContentView.swift
//  BRSTimeConvertR
//
//  Created by BrysonSaclausa on 9/17/21.
//

import SwiftUI

struct ContentView: View {
    @State private var inputHours = ""
    @State private var inputUnit = 0
    @State private var unitItem = 0
    let unitItems = ["hours", "minutes", "seconds"]
    
    var hourToMin: Double {
        let hoursInput = Double(inputHours) ?? 0
        let outputMinutes = hoursInput * 60
        return outputMinutes
    }
    
    var hourToSeconds: Double {
        let hoursInput = Double(inputHours) ?? 0
        let outputSeconds = hoursInput * 3600
        return outputSeconds
    }
    
    var hoursToHours: Double {
        let hoursInput = Double(inputHours) ?? 0
        return hoursInput
    }
    
    var hoursToDays: Double {
        let hoursInput = Double(inputHours) ?? 0
        let converted = hoursInput / 24
        return converted
    }
    
  
    var body: some View {
        NavigationView {
            Form {
                
                Section {
                    TextField("Units", text: $inputHours)
                    Picker("", selection: $unitItem) {
                        ForEach(0 ..< unitItems.count) {
                            Text("\(self.unitItems[$0])")
                        }
                    } .pickerStyle(SegmentedPickerStyle())
                }
                
                Section {
                    Text("Seconds: \(hourToSeconds, specifier: "%.2f")")
                    Text("Minutes: \(hourToMin, specifier: "%.2f")")
                    Text("Hours: \(hoursToHours, specifier: "%.2f")")
                    Text("Days: \(hoursToDays, specifier: "%.2f")")
                }
            }
            .navigationTitle("Time ConvertR")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
