//
//  HomeView.swift
//  CozyEats
//
//  Created by Benjamin Melville on 10/9/23.
//

import SwiftUI

struct MainView: View {
    
    @State private var selection: Tab = .Home
    
    var body: some View {
        TabView(selection: $selection) {
                profileViewTab
                homeViewTab
                settingsViewTab
        }
        .tint(.primary)
    }
    
    enum Tab: String {
        case Profile = "Profile"
        case Home = "Home"
        case Settings = "Settings"
    }
}

#Preview {
    MainView()
}

extension MainView {
    
    private var profileViewTab: some View {
        ProfileView()
            .tabItem {
                Label {
                    Text("Profile")
                } icon: {
                    Image(systemName: "person.fill")
                }
            }
            .tag(Tab.Profile)
    }
    
    private var homeViewTab: some View {
        HomeView()
            .tabItem {
                Label {
                    Text("Home")
                } icon: {
                    Image(systemName: "house.fill")
                }
            }
            .tag(Tab.Home)
    }
    
    private var settingsViewTab: some View {
        SettingsView()
            .tabItem {
                Label {
                    Text("Settings")
                } icon: {
                    Image(systemName: "gearshape.fill")
                }
            }
            .tag(Tab.Settings)
    }
}
