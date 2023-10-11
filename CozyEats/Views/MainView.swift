//
//  HomeView.swift
//  CozyEats
//
//  Created by Benjamin Melville on 10/9/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ProfileView()
                .tabItem {
                    Label {
                        Text("Profile")
                    } icon: {
                        Image(systemName: "person.fill")
                    }

                }
        }
    }
}

#Preview {
    MainView()
}
