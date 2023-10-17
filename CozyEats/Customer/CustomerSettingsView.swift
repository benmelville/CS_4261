//
//  SettingsView.swift
//  CozyEats
//
//  Created by Benjamin Melville on 10/10/23.
//

import SwiftUI

struct CustomerSettingsView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.tan.ignoresSafeArea()
                
                VStack {
                    Text("hello")
                }
                .navigationTitle("Settings")
            }
        }
    }
}

#Preview {
    CustomerSettingsView()
}
