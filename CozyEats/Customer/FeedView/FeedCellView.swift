//
//  FoodPreviewView.swift
//  CozyEats
//
//  Created by Benjamin Melville on 10/10/23.
//

import SwiftUI







struct FeedCellView: View {
    
    @State var isLiked: Bool = false
    let seller: Seller

    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            FeedCellHeaderView(seller: seller)
                .padding(.bottom, 12)
                .padding(.horizontal, 8)
            
            Image("\(seller.menu?.first?.images.first ?? "lasagna")")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
            
        }
        .padding(.horizontal, 8)
        
        HStack {
            Text("34 likes")
                .font(.system(.footnote, design: .serif))
                .fontWeight(.semibold)
                .onTapGesture {
                    print("liked image")
                }
            
            Spacer()
            
            Text("15 comments")
                .font(.system(.footnote, design: .serif))
                .foregroundStyle(.secondary)
                .onTapGesture {
                    print("comments")
                }
        }
        .frame(height: 16)
        .padding(.vertical, 14)
        .padding(.horizontal, 8)
        
        
        FeedCellActionBar()
        
        Rectangle()
            .frame(maxWidth: .infinity)
            .frame(height: 6)
            .foregroundStyle(Color(UIColor.secondarySystemBackground))
            .ignoresSafeArea()
        
        
        
        
        
        
        
//        VStack {
//            HStack {
//                
//                Image(systemName: "person.circle")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 35, height: 35)
//                
//                Text("Ben Melville")
//                    .font(.headline)
//                Spacer()
//                Image(systemName: "ellipsis")
//    
//            }
////            .foregroundStyle(Color("lightPink"))
//            .padding(.horizontal)
//                        
//            Image("lasagna")
//                .resizable()
//                .frame(height: 350)
//                .scaledToFit()
//            
//            HStack(spacing: 15) {
//                Image(systemName: isLiked ? "hand.thumbsup.fill" : "hand.thumbsup")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 25, height: 25)
//                    .foregroundStyle(isLiked ? Color("isLiked") : Color.primary)
//                    .onTapGesture {
//                        withAnimation(.bouncy) {
//                            isLiked.toggle()
//                        }
//                    }
//                Image(systemName: "text.bubble")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 25, height: 25)
//                
//                Spacer()
//                
//                FiveStarsView()
//            }
//            .padding(.horizontal)
//            .font(.headline)
//            
//        }


    }
}

#Preview {
    FeedCellView(seller: Seller(firstName: "bruce", lastName: "wayne", userId: "asdfouyastasdfv", dateCreated: Date(), email: "batman@gmail.com", photoUrl: "", menu: nil))
}
