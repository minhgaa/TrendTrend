import SwiftUI
import Firebase

struct MainpageView: View {
    @StateObject var mainpageViewModel = MainpageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        HStack {
                            Text(StringConstants.kLblNewFeed)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(24.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Teal900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(105.0),
                                       height: getRelativeHeight(29.0), alignment: .topLeading)
                                .position(x:getRelativeX(65), y:getRelativeY(25))
                            Image("img_notification_1")
                                .resizable()
                                .frame(width: getRelativeWidth(30.0),
                                       height: getRelativeWidth(30.0), alignment: .center)
                                .position(x:getRelativeX(-20), y:getRelativeY(10))
                                .scaledToFit()
                                .padding(.leading, getRelativeWidth(253.0))
                        }
                        .frame(width: getRelativeWidth(389.0), height: getRelativeHeight(32.0),
                               alignment: .center)
                        .padding(.leading, getRelativeWidth(18.0))
                        .padding(.trailing, getRelativeWidth(23.0))
                        Divider()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(1.0), alignment: .center)
                            .background(ColorConstants.Teal900)
                            .padding(.top, getRelativeHeight(22.0))
                    }
                    .position(x:getRelativeX(215), y:getRelativeY(80))

                    ScrollView(.vertical, showsIndicators: false) {
                        ForEach(mainpageViewModel.posts) { post in
                            PostView(post: post)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(770))
                    .position(x:getRelativeX(215), y: getRelativeY(57))

                    HStack {
                        ZStack(alignment: .center) {
                            ZStack() {
                                HStack {
                                    Spacer()
                                    Button(action: {}, label: {
                                        Image("img_homepage_1") })
                                    .frame(width: getRelativeWidth(30.0),
                                           height: getRelativeWidth(30.0),
                                           alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(1.0))
                                    Button(action: {}, label: {
                                        Image("img_search_4_1") })
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeWidth(32.0),
                                           alignment: .center)
                                    .padding(.vertical, getRelativeHeight(1.0))
                                    .padding(.leading, getRelativeWidth(45.0))
                                    Button(action: {}, label: {
                                        Image("img_shopping_bag_2_1") })
                                    .frame(width: getRelativeWidth(30.0),
                                           height: getRelativeWidth(30.0),
                                           alignment: .center)
                                    .position(x:getRelativeX(15),y:getRelativeY(70))
                                    .padding(.bottom, getRelativeHeight(0.0))
                                    .padding(.leading, getRelativeWidth(45.0))
                                }
                                .frame(width: getRelativeWidth(326.0),
                                       height: getRelativeHeight(147.0), alignment: .center)
                                .position(x:getRelativeX(180),y:getRelativeY(40))
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(ColorConstants.Teal900))
                                .padding(.top, getRelativeHeight(5.0))
                            }
                            .frame(width: getRelativeWidth(250.0),
                                   height: getRelativeHeight(172.0), alignment: .center)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.leading, getRelativeWidth(70))
                            Button(action: {}) {
                                NavigationLink(destination: CreatePostView() ) {
                                    Image("img_more_1")
                                        .frame(width: getRelativeWidth(50.0),
                                               height: getRelativeWidth(50.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(28.0))
                                        .padding(.trailing, getRelativeWidth(15.0))
                                        .position(x:getRelativeX(40),y:getRelativeY(47))
                                }
                            }
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(172.0),
                               alignment: .center)
                        .position(x:getRelativeX(170),y:getRelativeY(70))
                        Button(action: {}) {
                            NavigationLink(destination: PersonalpageView()){
                                Image("img_rectangle_16")
                                    .resizable()
                                    .frame(width: getRelativeWidth(65.0),
                                           height: getRelativeHeight(65.0))
                            }
                            .padding(.bottom,getRelativeHeight(90))
                        }
                    }
                    .frame(width: getRelativeWidth(412.0), height: getRelativeHeight(172.0),
                           alignment: .center)
                    .padding(.bottom,getRelativeHeight(-90))
                    .padding(.leading,getRelativeWidth(-10))
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .background(ColorConstants.WhiteA700)
                .ignoresSafeArea()
            }
        }
        .onAppear {
            mainpageViewModel.fetchPosts()
        }
        .navigationBarHidden(true)
    }
}

struct PostView: View {
    @State var post: Post
    @State private var isLiked = false
    @State private var likeCount: Int
    @State private var userId: String?

    init(post: Post) {
        _post = State(initialValue: post)
        _likeCount = State(initialValue: post.likeCount)
        _isLiked = State(initialValue: post.likes[Auth.auth().currentUser?.uid ?? ""] ?? false)
        _userId = State(initialValue: Auth.auth().currentUser?.uid)
    }

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("img_screenshot_2024_03_21")
                    .resizable()
                    .frame(width: getRelativeWidth(50.0),
                           height: getRelativeWidth(50.0))
                    .scaledToFit()
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 0) {
                    Text(post.username)
                        .font(FontScheme.kRobotoRegular(size: getRelativeHeight(20.0)))
                        .foregroundColor(ColorConstants.Black900)
                        .frame(width: getRelativeWidth(88.0),
                               height: getRelativeHeight(24.0))
                }
                .frame(width: getRelativeWidth(88.0),
                       height: getRelativeHeight(50.0))
                Text("\(post.timestamp.dateValue(), formatter: postDateFormatter)")
                    .font(FontScheme.kRobotoThin(size: getRelativeHeight(20.0)))
                    .fontWeight(.ultraLight)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(100.0),
                           height: getRelativeHeight(24.0))
                    .padding(.top, getRelativeHeight(5))
            }
            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(51.0),
                   alignment: .center)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.leading, getRelativeWidth(-45))
            Text(post.text)
                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(30.0)))
                .foregroundColor(ColorConstants.Black900)
                .frame(width: getRelativeWidth(200.0),
                       height: getRelativeHeight(18.0), alignment: .leading)
                .padding(.leading, getRelativeWidth(20))
                .padding(.top, getRelativeHeight(30))
                .padding(.bottom, getRelativeHeight(30))
            
            if let imageURL = post.imageURL, let url = URL(string: imageURL) {
                AsyncImage(url: url) { image in
                    image.resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: getRelativeWidth(370.0), height: getRelativeHeight(511.0))
                .scaledToFit()
                .clipped()
            }
            
            
            HStack {
                Button(action: {
                    toggleLike()
                }) {
                    Image(isLiked ? "heart_fill" : "heart")
                        .resizable()
                        .frame(width: getRelativeWidth(30.0),
                               height: getRelativeWidth(30.0), alignment: .center)
                        .padding(.leading,getRelativeWidth(10))
                }
                Text("\(likeCount)")
                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(20.0)))
                    .foregroundColor(ColorConstants.Teal900)
                    .frame(width: getRelativeWidth(50.0),
                           height: getRelativeHeight(30.0))
                    .padding(.leading,getRelativeWidth(-10))
                
                Image("img_message_1")
                    .resizable()
                    .frame(width: getRelativeWidth(30.0),
                           height: getRelativeWidth(30.0), alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.leading, getRelativeWidth(0))
                Text("\(likeCount)")
                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(20.0)))
                    .foregroundColor(ColorConstants.Teal900)
                    .frame(width: getRelativeWidth(50.0),
                           height: getRelativeHeight(30.0))
                    .padding(.leading,getRelativeWidth(-10))
                Image("img_price_tag_1")
                    .resizable()
                    .frame(width: getRelativeWidth(30.0),
                           height: getRelativeWidth(30.0), alignment: .center)
                    .scaledToFit()
                    .clipped()
                Image("img_bookmark_1")
                    .resizable()
                    .frame(width: getRelativeWidth(30.0),
                           height: getRelativeWidth(30.0), alignment: .center)
                    .scaledToFit()
                    .padding(.leading, getRelativeWidth(100.0))
            }
            .position(x: getRelativeX(180), y: getRelativeY(5))
            .frame(width: getRelativeWidth(370.0), height: getRelativeHeight(30.0),
                   alignment: .center)
            .padding(.top, getRelativeHeight(29.0))
        }
        .onAppear {
            checkIfLiked()
        }
    }
    
    func toggleLike() {
        guard let userId = userId else { return }
        isLiked.toggle()
        
        if isLiked {
            post.likes[userId] = true
            likeCount += 1
        } else {
            post.likes[userId] = false
            likeCount -= 1
        }
        
        updateLikeCount(postID: post.id ?? "", likes: post.likes, newCount: likeCount)
    }
    
    func updateLikeCount(postID: String, likes: [String: Bool], newCount: Int) {
        let db = Firestore.firestore()
        db.collection("posts").document(postID).updateData(["likes": likes, "likeCount": newCount]) { error in
            if let error = error {
                print("Failed to update like count: \(error.localizedDescription)")
            }
        }
    }
    
    func checkIfLiked() {
        guard let userId = userId else { return }
        isLiked = post.likes[userId] ?? false
    }
}

let postDateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .short
    return formatter
}()

struct MainpageView_Previews: PreviewProvider {
    static var previews: some View {
        MainpageView()
    }
}
