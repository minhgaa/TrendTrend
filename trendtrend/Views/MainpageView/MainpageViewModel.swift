
import SwiftUI
import FirebaseFirestore
import FirebaseAuth

class MainpageViewModel: ObservableObject {
    @Published var posts: [Post] = []

    private var db = Firestore.firestore()

    func fetchPosts() {
        guard let user = Auth.auth().currentUser else { return }
        db.collection("posts").getDocuments { (querySnapshot, error) in
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                self.posts = querySnapshot?.documents.compactMap { document in
                    try? document.data(as: Post.self)
                } ?? []
            }
        }
    }
}
