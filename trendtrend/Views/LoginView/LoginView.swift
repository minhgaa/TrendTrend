import SwiftUI
import FirebaseAuth
import Firebase
var currentUsername: String?
struct LoginView: View {
    @StateObject var loginViewModel = LoginViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var isLoggedIn = false
    @State private var loginError: String?
    var body: some View {
        if isLoggedIn {
            MainpageView()
        } else {
            content
                .navigationBarBackButtonHidden(true) 
        }
    }
    var content: some View {
        VStack {
            VStack {
                ZStack(alignment: .top) {
                    Image("Image_Login")
                        .resizable()
                        .position(x:getRelativeX(120),y:getRelativeY(320.0))
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(550.0))
                        .scaledToFit()
                        .zIndex(1)
                    Image("image_login1")
                        .resizable()
                        .position(x:getRelativeX(220),y:getRelativeY(500.0))
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(700.0))
                        .scaledToFit()
                        .zIndex(2)
                    HStack {
                        Image("img_logo")
                            .resizable()
                            .frame(width: getRelativeWidth(120), height: getRelativeHeight(120))
                            .scaledToFit()
                    }
                    
                    .frame(width: getRelativeWidth(220), height: getRelativeHeight(220))
                    .background(RoundedCorners(topLeft: 150.0, topRight: 150.0, bottomLeft: 150.0,
                                               bottomRight: 150.0)
                        .fill(ColorConstants.WhiteA700))
                    .overlay(RoundedCorners(topLeft: 150.0, topRight: 150.0, bottomLeft: 150.0,
                                            bottomRight: 150.0)
                        .stroke(ColorConstants.Teal1000,
                                lineWidth: 1))
                    .zIndex(3)
                    .position(x:getRelativeX(280), y:getRelativeY(350))
                }
                .frame(alignment: .center)
                
                VStack{
                    HStack {
                        Spacer()
                        Image("img_mail_1")
                            .resizable()
                            .frame(width: getRelativeWidth(30.0), height: getRelativeWidth(30.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(18.0))
                            .padding(.bottom, getRelativeHeight(19.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(12.0))
                        TextField(StringConstants.kLblEmail, text: $loginViewModel.emailText)
                            .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                            .foregroundColor(ColorConstants.Teal900)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(313.0), height: getRelativeHeight(67.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                            bottomRight: 10.0)
                        .stroke(ColorConstants.Teal900,
                                lineWidth: 1))
                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                               bottomRight: 10.0)
                        .fill(ColorConstants.WhiteA700))
                    HStack {
                        Spacer()
                        Image("img_lock_1")
                            .resizable()
                            .frame(width: getRelativeWidth(35.0), height: getRelativeWidth(35.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(16.0))
                            .padding(.leading, getRelativeWidth(14.0))
                            .padding(.trailing, getRelativeWidth(7.0))
                        SecureField(StringConstants.kLblPassword, text: $loginViewModel.passwordText)
                            .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                            .foregroundColor(ColorConstants.Teal900)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(313.0), height: getRelativeHeight(67.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                            bottomRight: 10.0)
                        .stroke(ColorConstants.Teal900,
                                lineWidth: 1))
                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                               bottomRight: 10.0)
                        .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(25.0))
                    .padding(.leading, getRelativeWidth(57.0))
                    .padding(.trailing, getRelativeWidth(60.0))
                    
                    
                    Button(action: {login()}, label: {
                        HStack(spacing: 0) {
                            Text("Log in")
                                .font(FontScheme.kRobotoBold(size: getRelativeHeight(24.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .fontWeight(.regular)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(19.0))
                                .foregroundColor(ColorConstants.Teal1000)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                        }
                    })
                    .frame(width: getRelativeWidth(313.0), height: getRelativeHeight(67.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 33.0, topRight: 33.0, bottomLeft: 33.0,
                                            bottomRight: 33.0)
                        .stroke(ColorConstants.Teal900,
                                lineWidth: 1))
                    .background(RoundedCorners(topLeft: 33.0, topRight: 33.0, bottomLeft: 33.0,
                                               bottomRight: 33.0)
                        .fill(ColorConstants.Teal1000))
                    .padding(.top, getRelativeHeight(29.0))
                    .padding(.leading, getRelativeWidth(57.0))
                    .padding(.trailing, getRelativeWidth(60.0))
                }
                .position(x:getRelativeX(220),y:getRelativeY(-30))
                
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
            if let loginError = loginError {
                Text(loginError)
                    .font(FontScheme.kRobotoBold(size: 20))
                    .foregroundColor(Color.red)
                    .position(x:getRelativeX(220), y:getRelativeY(160))
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
    }
    func login() {
        Auth.auth().signIn(withEmail: loginViewModel.emailText, password: loginViewModel.passwordText) { result, error in
            if let error = error {
                loginError = "Sai Email hoặc Mật khẩu!"
                print("Login error: \(error.localizedDescription)")
            } else {
                isLoggedIn = true
                loginError = nil
                guard let user = Auth.auth().currentUser else { return }
                let db = Firestore.firestore()
                
                db.collection("users").document(user.uid).getDocument { document, error in
                    if let error = error {
                        print("Failed to fetch username: \(error.localizedDescription)")
                    } else if let document = document, document.exists, let data = document.data() {
                        currentUsername = data["username"] as? String
                        print("Username fetched successfully: \(currentUsername ?? "")")
                    } else {
                        print("Document does not exist")
                    }
                }
            }
        }
    }

}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
