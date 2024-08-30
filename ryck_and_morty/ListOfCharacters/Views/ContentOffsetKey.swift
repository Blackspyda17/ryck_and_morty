//
//  ContentOffsetKey.swift
//  ryck_and_morty
//
//  Created by Gilberth Paez Ortiz on 29/8/24.
//

import SwiftUI

struct ContentOffsetKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue = CGFloat.zero
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value += nextValue()
    }
}
