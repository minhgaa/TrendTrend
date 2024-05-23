import SwiftUI
struct CreatePostView: View {
    @StateObject var createpostViewModel = CreatePostViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectedImage: UIImage?
    @State private var isShowingPhotoPicker = false
    @State private var isShowingCameraPicker = false 

    var body: some View {
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

                    Button(action: {}) {
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
                    TextField("What's your day?", text: $createpostViewModel.PostText)
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
        }
        .navigationBarHidden(true)
    }
}

struct CreatePostView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePostView()
    }
}
