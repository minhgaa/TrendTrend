import SwiftUI
struct GetstartedView: View {
    @StateObject var getstartedViewModel = GetstartedViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .top) {
                    Image("img_image_1")
                        .resizable()
                        .position(x:getRelativeX(215),y:getRelativeY(256.0))
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(621.0))
                        .scaledToFit()
                    
                    VStack {
                        VStack {
                            Image("img_screenshot_2024_03_20")
                                .resizable()
                                .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(46.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0))
                            Text(StringConstants.kLblTrendtrend)
                                .font(FontScheme.kPacificoRegular(size: getRelativeHeight(60.0)))
                                .foregroundColor(ColorConstants.Teal900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(179.0), height: getRelativeHeight(36.0),
                                       alignment: .center)
                                .padding(.vertical, getRelativeHeight(3.0))
                        }
                        
                        .frame(width: getRelativeWidth(220.0), height: getRelativeHeight(170.0),
                               alignment: .center)
                        
                        .background(RoundedCorners(topLeft: 50.0, topRight: 50.0, bottomLeft: 50.0,
                                                   bottomRight: 50.0)
                                    
                            .fill(ColorConstants.WhiteA700))
                        .position(x:getRelativeX(100),y:getRelativeY(45.0))
                        
                        .padding(.horizontal, getRelativeWidth(24.0))
                        NavigationLink(destination: SignupView()){
                            HStack {
                                Text(StringConstants.kLblGetStarted)
                                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(40.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Teal900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(198.0), height: getRelativeHeight(47.0),
                                           alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(4.0))
                                Image("img_right_arrow_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                                           alignment: .center)
                                
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(14.0))
                            }
                            .position(x:getRelativeX(140),y:getRelativeY(0.0))
                            .frame(width: getRelativeWidth(263.0), height: getRelativeHeight(51.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(50.0))
                        }
                        
                        Button(action: {}) {
                            NavigationLink(destination: LoginView()){
                                VStack {
                                    Text(StringConstants.kMsgExistingUserLog)
                                        .font(FontScheme.kRobotoRegular(size: getRelativeHeight(24.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Teal900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                }
                                .frame(width: getRelativeWidth(268.0), height: getRelativeHeight(57.0),
                                       alignment: .center)
                                
                                .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                        bottomRight: 20.0)
                                    .stroke(ColorConstants.Teal900,
                                            lineWidth: 1))
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                           bottomRight: 20.0)
                                    .fill(ColorConstants.WhiteA700))
                                
                                .padding(.top, getRelativeHeight(16.0))
                                .position(x:getRelativeX(140),y:getRelativeY(20.0))
                            }
                        }
                        PageIndicator(numPages: 3, currentPage: .constant(0),
                                      selectedColor: ColorConstants.Teal900,
                                      unSelectedColor: ColorConstants.BlueGray100, spacing: 15.0)
                    }
                    
                    .frame(width: getRelativeWidth(268.0), height: getRelativeHeight(408.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(479.0))
                    .padding(.horizontal, getRelativeWidth(81.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
    }
}
struct GetstartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetstartedView()
    }
}
