import SwiftUI
import Firebase
import FirebaseFirestore
import FirebaseStorage

class CreatePostViewModel: ObservableObject {
    @Published var PostText: String = ""
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    

}
