//
//  StorageManager.swift
//  CozyEats
//
//  Created by Benjamin Melville on 10/16/23.
//

import Foundation
import FirebaseStorage

final class StorageManager {
    
    static let shared = StorageManager()
    private init() { }
    
    private let storage = Storage.storage().reference()
    
    
    func saveImage(userId: String, menuItemName: String, data: Data) async throws /*-> (path: String, name: String)*/ {
        
        let meta = StorageMetadata()
        meta.contentType = "image/png"
        let path = "\(userId)/\(menuItemName)/\(UUID().uuidString).png"
        
        
        let _ = try await storage.child(path).putDataAsync(data, metadata: meta)
        
    }
    
}
