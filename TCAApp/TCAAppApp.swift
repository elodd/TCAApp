//
//  TCAAppApp.swift
//  TCAApp
//
//  Created by Elöd Dobos on 2024-02-09.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCAAppApp: App {
    @State var store = Store(initialState: AdditionFeature.State()) {
        AdditionFeature()
            ._printChanges()
    }

    var body: some Scene {
        WindowGroup {
            ContentView(store: self.store)
        }
    }
}
