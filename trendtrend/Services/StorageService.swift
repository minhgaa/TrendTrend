//
//  StorageService.swift
//  trendtrend
//
//  Created by minhgaa on 23/05/2024.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseStorage

class StorageService {
    
    static var storage = Storage.storage()
    static var storageRoot = storage.reference()
    static var storageProfile = storageRoot.child("profile")
    static var storagePost = storageRoot.child("post")
    static func storagePostId(postId:String) -> StorageReference {
        return storageProfile.child(postId)
    }
    static func storageProfileId(userId:String) -> StorageReference {
        return storageProfile.child(userId)
    }
    static func savePostPhoto(user:String, caption:String, postId: String, imageData: Data, metadata:StorageMetadata, storagePostRef: StorageReference, onSuccess: @escaping() -> Void, onError: @escaping(_ errorMessage: String) -> Void) {
        
    }
}
