//
//  ProfileView.swift
//  CozyEats
//
//  Created by Benjamin Melville on 10/10/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.tan.ignoresSafeArea()
                
                VStack {
                    Text("profile")
                }
                .navigationTitle("Profile")
                .foregroundColor(.blue)
                
            }
        }
    }
}

#Preview {
    ProfileView()
}
