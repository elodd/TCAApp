//
//  AdditionFeatureTests.swift
//  TCAAppTests
//
//  Created by Elöd Dobos on 2024-02-09.
//

import ComposableArchitecture
import XCTest

@MainActor
final class AdditionFeatureTests: XCTestCase {
    func testAdditionEnabled() async {
        let store = TestStore(initialState: AdditionFeature.State()) {
            AdditionFeature()
        }
        
        await store.send(.enableButtonTapped) {
            $0.enabled = true
        }
    }

    func testAdditionDisabled() async {
        let store = TestStore(initialState: AdditionFeature.State()) {
            AdditionFeature()
        }

        await store.send(.disableButtonTapped) {
            $0.enabled = false
        }
    }
}
