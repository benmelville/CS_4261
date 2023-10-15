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
    let userId: String
    let dateCreated : Date?
    let email: String?
    let photoUrl: String?
    
}
