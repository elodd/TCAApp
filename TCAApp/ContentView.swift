//
//  ContentView.swift
//  TCAApp
//
//  Created by Elöd Dobos on 2024-02-09.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    @State var store: StoreOf<AdditionFeature> = Store(initialState: AdditionFeature.State()) {
        AdditionFeature()
    }
    
    var body: some View {
        let isEnabled = store.enabled ? "TRUE" : "FALSE"
        VStack {
            Text("\(isEnabled)")
                .font(.largeTitle)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(10)
            HStack {
                if isEnabled != "FALSE" {
                    Button("DISABLE") {
                        store.send(AdditionFeature.Action.disableButtonTapped
                        )
                    }
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                }
                
                if isEnabled != "TRUE" {
                    Button("ENABLE") {
                        store.send(AdditionFeature.Action.enableButtonTapped)
                    }
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(10)
                }
            }
        }
    }
}
