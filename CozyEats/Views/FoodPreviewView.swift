//
//  FoodPreviewView.swift
//  CozyEats
//
//  Created by Benjamin Melville on 10/10/23.
//

import SwiftUI

struct FoodPreviewView: View {
    
    @State var isLiked: Bool = false
    
    var body: some View {
        
        VStack {
            HStack {
                
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
                    .foregroundStyle(Color("lightPink"))
                
                Text("Ben Melville")
                Spacer()
                Image(systemName: "ellipsis")
    
            }
            .foregroundStyle(Color("lightPink"))
            .padding(.horizontal)
                        
            Image("lasagna")
                .resizable()
                .frame(height: 350)
                .scaledToFit()
            
            HStack(spacing: 15) {
                Image(systemName: isLiked ? "hand.thumbsup.fill" : "hand.thumbsup")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(isLiked ? Color("isLiked") : Color("lightPink"))
                    .onTapGesture {
                        isLiked.toggle()
                    }
                Image(systemName: "text.bubble")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                Spacer()
            }
            .padding(.horizontal)
            .font(.headline)
            
        }


    }
}

#Preview {
    FoodPreviewView()
}
