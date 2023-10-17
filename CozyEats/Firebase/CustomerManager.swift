//
//  UserManager.swift
//  CozyEats
//
//  Created by Benjamin Melville on 10/15/23.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift



struct Customer: Codable {
    let firstName: String?
    let lastName: String?
    let userId: String
    let dateCreated : Date?
    let email: String?
    let photoUrl: String?
    
    init(auth: AuthDataResultModel, firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.userId = auth.uid
        self.dateCreated = Date()
        self.email = auth.email
        self.photoUrl = auth.photoUrl
    }
    
    init(
        firstName: String?,
        lastName: String?,
        userId: String,
        dateCreated : Date?,
        email: String?,
        photoUrl: String?
    ) {
        self.firstName = firstName
        self.lastName = lastName
        self.userId = userId
        self.dateCreated = dateCreated
        self.email = email
        self.photoUrl = photoUrl
    }
    
}

final class CustomerManager {
    static let shared = CustomerManager()
    
    private init() { }
    
    private let customerCollection = Firestore.firestore().collection("customers")
    
    private func customerDocument(userId: String) -> DocumentReference {
        return customerCollection.document(userId)
    }
    
    private let encoder: Firestore.Encoder = {
        let encoder = Firestore.Encoder()
        return encoder
    }()
    
    private let decoder: Firestore.Decoder = {
        let decoder = Firestore.Decoder()
        return decoder
    }()
    
    func createNewCustomer(user: Customer) async throws {
        try customerDocument(userId: user.userId).setData(from: user, merge: false)
    }
    
    
    func getCustomer(userId: String) async throws -> Customer {
        return try await customerDocument(userId: userId).getDocument(as: Customer.self)
    }
}
