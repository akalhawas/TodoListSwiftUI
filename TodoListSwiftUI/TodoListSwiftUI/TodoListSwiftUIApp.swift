//
//  TodoListSwiftUIApp.swift
//  TodoListSwiftUI
//
//  Created by Qassim Municipality iMac on 22/06/1444 AH.
//

import SwiftUI

@main
struct TodoListSwiftUIApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()                
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
