//
//  HomeView.swift
//  CozyEats
//
//  Created by Benjamin Melville on 10/10/23.
//

import SwiftUI


@MainActor
final class CustomerViewModel: ObservableObject {
    
    
    @Published private(set) var user: Customer? = nil
    @Published var sellers: [Seller]? = nil
    
    func loadCurrentUser() async throws {
        let authDataResult = try AuthenticationManager.shared.getAuthenticatedUser()
        
        self.user = try await CustomerManager.shared.getCustomer(userId: authDataResult.uid)
    }
    
    //TODO: function to fetch all of the seller user data
    func getAllSellers() async throws {
        let sellers: [Seller] = try await SellerManager.shared.getAllSellers()
        self.sellers = sellers
    }
    
}




struct CustomerHomeView: View {
    
    @StateObject private var viewModel = CustomerViewModel()
    
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
                        .frame(height: 0.5)
                        .overlay(.accent)
                        .padding()
                    
                    if let sellers = viewModel.sellers {
                        
                        ForEach(sellers, id: \.self) { seller in
                            
                            FeedCellView(seller: seller)

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
                .toolbarBackground(.visible, for: .navigationBar)
                .toolbarBackground(Color.accentColor, for: .navigationBar)
            }
        }
        .task {
            try? await viewModel.getAllSellers()
        }
    }
}

#Preview {
    CustomerHomeView()
}
