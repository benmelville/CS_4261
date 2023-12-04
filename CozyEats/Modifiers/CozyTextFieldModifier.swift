//
//  CozyTextFieldModifier.swift
//  CozyEats
//
//  Created by Benjamin Melville on 11/10/23.
//

import Foundation
import SwiftUI

struct CozyTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.headline, design: .serif))
            .padding(.leading)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))

    }
}

extension View {
    func cozyTextFieldStyle() -> some View {
        modifier(CozyTextFieldModifier())
    }
}
