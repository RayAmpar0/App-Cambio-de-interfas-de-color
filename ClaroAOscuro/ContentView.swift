//
//  ContentView.swift
//  ClaroAOscuro
//
//  Created by Ray Amparo on 5/18/23.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        VStack {
            Picker("Mode", selection: $isDarkMode) {
                Text("Ligh")
                    .tag(false)
                Text("Dark")
                    .tag(true)
            }.pickerStyle(SegmentedPickerStyle())
                .padding()
            List(0..<5, id: \.self) { num in
                NavigationLink(destination: Text("\(num)")) {
                    Text("\(num)")
                }
            }
        }.navigationTitle("Modo Switch")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
