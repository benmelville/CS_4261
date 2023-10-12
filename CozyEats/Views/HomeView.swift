//
//  HomeView.swift
//  CozyEats
//
//  Created by Benjamin Melville on 10/10/23.
//

import SwiftUI

struct HomeView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.tan.ignoresSafeArea()
                
                ScrollView {
                    Spacer()
                    HStack(spacing: 25.0) {
                        VStack {
                            Text("🍔")
                                .font(.largeTitle)
                            Text("American")
                        }
                        .frame(width: 80, height: 80)
                        
                        VStack {
                            Text("🍝")
                                .font(.largeTitle)
                            Text("Italian")
                        }
                        .frame(width: 80, height: 80)
                        
                        VStack {
                            Text("🥡")
                                .font(.largeTitle)
                            Text("Chinese")
                        }
                        .frame(width: 80, height: 80)
                        
                        VStack {
                            Text("🌮")
                                .font(.largeTitle)
                            Text("Mexican")
                        }
                        .frame(width: 80, height: 80)
                        
                    }
                    .font(.headline)
                    
                    Divider()
                        .frame(height: 4)
                        .overlay(.accent)
                        .padding()
                    
                    ForEach(1..<10) { i in
                        FoodPreviewView()
                        Divider().frame(height: 30)
                    }
                }
            }
            .navigationTitle("Cozy Eats")
            .searchable(text: $searchText)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                }
            }
            .toolbar(.visible, for: .navigationBar)
        .toolbarBackground(Color.accentColor, for: .navigationBar)
        }
    }
}

#Preview {
    HomeView()
}
