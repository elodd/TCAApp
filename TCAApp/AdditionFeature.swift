//
//  AdditionFeature.swift
//  TCAApp
//
//  Created by Elöd Dobos on 2024-02-09.
//

import Foundation
import ComposableArchitecture

@Reducer
struct AdditionFeature {
    @ObservableState
    struct State: Equatable {
        var enabled = false
    }
    
    enum Action {
        case enableButtonTapped
        case disableButtonTapped
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .enableButtonTapped:
                state.enabled = true
                return .none
            case .disableButtonTapped:
                state.enabled = false
                return .none
            }
        }
    }
}
