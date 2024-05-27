import SwiftUI
import FirebaseAuth
import FirebaseFirestore

struct SignupView: View {
    @StateObject var signupViewModel = SignupViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var email = ""
    @State private var password = ""
    @State private var username = ""
    @State private var showAlert = false
    @State private var alertMessage = ""
    @State private var gotoBodymeasure = false

    var body: some View {
        if gotoBodymeasure {
            BodymeasureView()
        } else {
            VStack {
                VStack {
                    ZStack(alignment: .top) {
                        Image("img_image_6")
                            .resizable()
                            .position(x: getRelativeX(214), y: getRelativeY(133))
                            .frame(width: getRelativeWidth(429.0), height: getRelativeHeight(375.0),
                                   alignment: .top)
                            .scaledToFit()
                        
                        VStack {
                            Text(StringConstants.kLblCreate)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(64.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Teal900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(187.0), height: getRelativeHeight(73.0),
                                       alignment: .topLeading)
                            Text(StringConstants.kMsgYourOwnAccount)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(40.0)))
                            
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Teal900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(24.0),
                                       alignment: .center)
                                .position(x: getRelativeX(110), y: getRelativeY(0))
                                .padding(.bottom, getRelativeHeight(15.0))
                        }
                        .frame(width: getRelativeWidth(217.0), height: getRelativeHeight(126.0),
                               alignment: .top)
                        .position(x: getRelativeX(110), y: getRelativeY(75))
                        
                        .background(RoundedCorners(topLeft: 40.0, topRight: 40.0, bottomLeft: 40.0,
                                                   bottomRight: 40.0)
                            .fill(ColorConstants.WhiteA700))
                        .position(x: getRelativeX(110), y: getRelativeY(10))
                        .padding(.top, getRelativeHeight(207.0))
                        .padding(.leading, getRelativeWidth(167.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(429.0), height: getRelativeHeight(375.0),
                           alignment: .center)
                    
                    VStack {
                        Button(action: {}, label: {
                            HStack() {
                                Image("img_image_5")
                                    .resizable()
                                    .position(x: getRelativeX(35), y: getRelativeY(20))
                                    .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0))
                                    .scaledToFit()
                                Text(StringConstants.kMsgContinueWithGoogle)
                                    .font(FontScheme.kRobotoBold(size: getRelativeHeight(20.0)))
                                    .position(x: getRelativeX(120), y: getRelativeY(13))
                                    .padding(.trailing, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(21.0))
                                    .foregroundColor(ColorConstants.Teal900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                            }
                            .frame(width: getRelativeWidth(313.0), height: getRelativeHeight(67.0),
                                   alignment: .topLeading)
                            .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                    bottomRight: 10.0)
                                .stroke(ColorConstants.Teal900,
                                        lineWidth: 1))
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(7.0))
                            .padding(.horizontal, getRelativeWidth(57.0))
                            
                        })
                        HStack {
                            Image("img_user_1")
                                .resizable()
                                .frame(width: getRelativeWidth(25.0), height: getRelativeWidth(25.0))
                                .scaledToFit()
                                .clipped()
                            TextField(StringConstants.kLblUsername, text: $username)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                                .foregroundColor(ColorConstants.Teal900)
                                .position(x: getRelativeX(140), y: getRelativeY(16))
                                .padding()
                        }
                        .position(x: getRelativeX(183), y: getRelativeY(33))
                        .frame(width: getRelativeWidth(313.0), height: getRelativeHeight(67.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                bottomRight: 10.0)
                            .stroke(ColorConstants.Teal900,
                                    lineWidth: 1))
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                            .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(28.0))
                        .padding(.leading, getRelativeWidth(57.0))
                        .padding(.trailing, getRelativeWidth(60.0))
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
                            TextField(StringConstants.kLblEmail, text: $email)
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
                            SecureField(StringConstants.kLblPassword, text: $password)
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
                        
                        
                        Button(action: { register() }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblNext)
                                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(24.0)))
                                    .fontWeight(.regular)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(19.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                            }
                        })
                        .frame(width: getRelativeWidth(313.0), height: getRelativeHeight(67.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 33.0, topRight: 33.0, bottomLeft: 33.0,
                                                   bottomRight: 33.0)
                            .fill(ColorConstants.Teal900))
                        .padding(.top, getRelativeHeight(29.0))
                        .padding(.leading, getRelativeWidth(57.0))
                        .padding(.trailing, getRelativeWidth(60.0))
                    }
                    .position(x: getRelativeX(220), y: getRelativeY(200))
                    PageIndicator(numPages: 3, currentPage: .constant(1),
                                  selectedColor: ColorConstants.Teal900,
                                  unSelectedColor: ColorConstants.BlueGray100, spacing: 15.0)
                    
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                
                
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
    private func register() {
        let db = Firestore.firestore()
        db.collection("users").whereField("username", isEqualTo: username).getDocuments { snapshot, error in
            if let error = error {
                print("Error checking username: \(error.localizedDescription)")
                alertMessage = "An error occurred while checking the username."
                showAlert = true
                return
            }
            
            if let snapshot = snapshot, !snapshot.isEmpty {
                // Username is already taken
                alertMessage = "Username is already taken."
                showAlert = true
                return
            }
            
            // Username is available, proceed with user creation
            Auth.auth().createUser(withEmail: email, password: password) { result, error in
                if let error = error {
                    print("Failed to create user: \(error.localizedDescription)")
                    alertMessage = "Failed to create user: \(error.localizedDescription)"
                    showAlert = true
                    return
                }
                
                guard let user = result?.user else { return }
                let userData: [String: Any] = [
                    "username": username,
                    "email": email
                ]
                
                db.collection("users").document(user.uid).setData(userData) { error in
                    if let error = error {
                        print("Failed to save user data: \(error.localizedDescription)")
                        alertMessage = "Failed to save user data: \(error.localizedDescription)"
                        showAlert = true
                    } else {
                        gotoBodymeasure = true
                    }
                }
            }
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
