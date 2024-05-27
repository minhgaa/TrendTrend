import SwiftUI
import Firebase

struct CreatePostView: View {
    @State private var postText = ""
    @State private var selectedImage: UIImage?
    @State private var isShowingPhotoPicker = false
    @State private var isShowingCameraPicker = false
    @State private var showAlert = false
    @State private var alertMessage = ""
    @Environment(\.presentationMode) var presentationMode
    @State private var gotoMainpage = false
    var body: some View {
        if gotoMainpage {
            MainpageView()
        } else
        {
            NavigationView {
                VStack {
                    HStack {
                        NavigationLink(destination: MainpageView()) {
                            Image("img_left")
                        }
                        .frame(alignment: .leading)
                        .position(x: getRelativeX(30), y: getRelativeY(30))
                        Text("Create post")
                            .font(FontScheme.kRobotoRegular(size: getRelativeHeight(24.0)))
                            .frame(width: getRelativeWidth(150), alignment: .center)
                            .position(x: getRelativeX(70), y: getRelativeY(30))
                        
                        Button(action: uploadPost) {
                            Text("Post")
                                .foregroundColor(Color.white)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(20.0)))
                        }
                        .frame(width: getRelativeWidth(90), height: getRelativeHeight(60), alignment: .center)
                        .background(RoundedCorners(topLeft: 30.0, topRight: 0.0, bottomLeft: 30.0, bottomRight: 0.0)
                            .fill(ColorConstants.Teal900))
                        .position(x: getRelativeX(95), y: getRelativeY(30))
                    }
                    HStack (alignment: .top) {
                        Image("img_rectangle_16")
                            .resizable()
                            .scaledToFit()
                            .frame(width: getRelativeWidth(70), height: getRelativeHeight(70), alignment: .leading)
                        TextField("What's your day?", text: $postText)
                            .font(FontScheme.kRobotoRegular(size: getRelativeHeight(25.0)))
                            .foregroundColor(ColorConstants.Teal900)
                            .padding(.leading, getRelativeWidth(20))
                            .padding(.top, getRelativeHeight(20))
                    }
                    .position(x:getRelativeX(250),y:getRelativeY(-90))
                    HStack {
                        if let selectedImage = selectedImage {
                            Image(uiImage: selectedImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 400, height: getRelativeHeight(550))
                        } else {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 400, height: getRelativeHeight(550), alignment: .center)
                        }
                    }
                    .position(x: getRelativeX(215), y: getRelativeY(40))
                    
                    HStack {
                        Button(action: {
                            isShowingCameraPicker = true
                        }) {
                            Image("img_camera")
                                .resizable()
                                .frame(width: getRelativeWidth(50), height: getRelativeHeight(50))
                        }
                        .padding(.leading, getRelativeWidth(20))
                        .padding(.trailing, getRelativeWidth(20))
                        
                        Button(action: {
                            isShowingPhotoPicker = true
                        }) {
                            Text("Choose image")
                                .foregroundColor(ColorConstants.Teal900)
                                .font(FontScheme.kRobotoBold(size: getRelativeHeight(23.0)))
                                .frame(width: getRelativeWidth(150), height: getRelativeHeight(50))
                                .padding(.leading, getRelativeWidth(40))
                        }
                        
                        Button(action: {}) {
                            Text("Link")
                                .foregroundColor(ColorConstants.Teal900)
                                .font(FontScheme.kRobotoBold(size: getRelativeHeight(23.0)))
                                .frame(width: getRelativeWidth(150), height: getRelativeHeight(20))
                        }
                    }
                    .position(x: getRelativeX(230), y: getRelativeY(170))
                }
                .sheet(isPresented: $isShowingPhotoPicker) {
                    ImagePicker(selectedImage: $selectedImage, sourceType: .photoLibrary)
                }
                .sheet(isPresented: $isShowingCameraPicker) {
                    ImagePicker(selectedImage: $selectedImage, sourceType: .camera)
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Success"),
                        message: Text(alertMessage),
                        dismissButton: .default(Text("OK")) {
                            gotoMainpage = true
                        }
                    )
                }
            }
            .navigationBarHidden(true)
        }
    }
    func uploadPost() {
        guard let user = Auth.auth().currentUser else { return }
        let db = Firestore.firestore()
        let storage = Storage.storage().reference()
        
        if let selectedImage = selectedImage, let imageData = selectedImage.jpegData(compressionQuality: 0.8) {
            let imageRef = storage.child("posts/\(UUID().uuidString).jpg")
            
            imageRef.putData(imageData, metadata: nil) { metadata, error in
                if let error = error {
                    alertMessage = "Failed to upload image: \(error.localizedDescription)"
                    showAlert = true
                    return
                }
                
                imageRef.downloadURL { url, error in
                    if let error = error {
                        alertMessage = "Failed to get download URL: \(error.localizedDescription)"
                        showAlert = true
                        return
                    }
                    
                    guard let url = url else { return }
                    savePost(imageURL: url.absoluteString)
                }
            }
        } else {
            savePost(imageURL: nil)
        }
    }
    
    func savePost(imageURL: String?) {
        guard let user = Auth.auth().currentUser else { return }
        let db = Firestore.firestore()
        
        let post = Post(username: currentUsername ?? "Unknown", text: postText, imageURL: imageURL, timestamp: Timestamp(), likes: [:], likeCount: 0)
        
        do {
            try db.collection("posts").addDocument(from: post)
            alertMessage = "Post uploaded successfully"
            showAlert = true
        } catch {
            alertMessage = "Failed to save post: \(error.localizedDescription)"
            showAlert = true
        }
    }
}

struct CreatePostView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePostView()
    }
}
