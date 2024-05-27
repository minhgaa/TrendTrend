//import Foundation
//
//struct User: Identifiable {
//    var id: String
//    var name: String
//    var email: String
//    var profileImageURL: String?
//    var bio: String?
//}
import FirebaseFirestore

struct User: Identifiable, Codable {
    @DocumentID var id: String?
    var username: String?
    var email: String
    var height: Float
    var weight: Float
    var sleeve: Float
    var waist: Float
    var Inseam: Float
    var Chest: Float
    var Follower: [String]
    var Following: [String]
    var posts: [Post]?
}

struct Post: Identifiable, Codable {
    @DocumentID var id: String?
    var username: String
    var text: String
    var imageURL: String?
    var timestamp: Timestamp
    var likes: [String : Bool]
    var likeCount: Int
}
