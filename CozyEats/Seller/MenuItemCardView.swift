//
//  MenuItemCardView.swift
//  CozyEats
//
//  Created by Benjamin Melville on 10/16/23.
//

import SwiftUI

struct MenuItemCardView: View {
    
    @State var menu: MenuItem
    
    var body: some View {
        
        Image(menu.images?.first ?? "lasagna")
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
        
            .overlay(alignment: .topLeading) {
                VStack {
                    
                    Text(menu.cuisine ?? "")
                        .padding()
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                .padding()
            }
            .overlay(alignment: .bottom) {
                VStack(alignment: .leading) {
                    Group {
                        Text(menu.name)
                            .font(.largeTitle)
                            .fontWeight(.medium)
                            .foregroundStyle(Color.primary)
                        
                        Text("$\(menu.price ?? 0)")
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundStyle(Color.secondary)
                    }
                    .padding(.horizontal)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 100)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .padding(.horizontal)
                .padding(.bottom)
            }
    }
}

#Preview {
    MenuItemCardView(menu: MenuItem(name: "Lasagna", price: 12, description: "This lasagna is very tasty", cuisine: "Italian"))
}
