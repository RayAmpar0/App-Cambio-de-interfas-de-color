//
//  ClaroAOscuroApp.swift
//  ClaroAOscuro
//
//  Created by Ray Amparo on 5/18/23.
//

import SwiftUI

@main
struct ClaroAOscuroApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView{
                    ContentView()
                }.tabItem {
                    Image(systemName: "list.bullet")
                    Text("Lista")
                }
                Text("Perfil")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Perfil")
                    }
            }
            .environment(\.colorScheme, isDarkMode ? .dark : .light)
//            .preferredColorScheme(isDarkMode ? .dark : .light)
            .accentColor(.primary)
        }
    }
}
