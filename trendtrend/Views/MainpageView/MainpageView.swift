import SwiftUI

struct MainpageView: View {
    @StateObject var mainpageViewModel = MainpageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
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
                            HStack {
                                HStack {
                                    Image("img_screenshot_2024_03_21")
                                        .resizable()
                                        .frame(width: getRelativeWidth(50.0),
                                               height: getRelativeWidth(50.0), alignment: .center)
                                        .scaledToFit()
                                        .clipShape(Circle())
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLblBlackman)
                                            .font(FontScheme
                                                .kRobotoRegular(size: getRelativeHeight(20.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(88.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLblBlckman)
                                            .font(FontScheme
                                                .kRobotoLight(size: getRelativeHeight(15.0)))
                                            .fontWeight(.light)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(69.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(8.0))
                                    }
                                    .frame(width: getRelativeWidth(88.0),
                                           height: getRelativeHeight(50.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(12.0))
                                    Text(StringConstants.kLbl23H)
                                        .font(FontScheme
                                            .kRobotoThin(size: getRelativeHeight(20.0)))
                                        .fontWeight(.ultraLight)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(37.0),
                                               height: getRelativeHeight(24.0), alignment: .topLeading)
                                        .padding(.bottom, getRelativeHeight(26.0))
                                        .padding(.leading, getRelativeWidth(23.0))
                                }
                                .frame(width: getRelativeWidth(211.0), height: getRelativeHeight(51.0),
                                       alignment: .center)
                                Image("img_more_3_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(11.0))
                                    .padding(.leading, getRelativeWidth(143.0))
                            }
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(51.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(30.0))
                            .padding(.leading, getRelativeWidth(30.0))
                            .padding(.trailing, getRelativeWidth(23.0))
                            Image("img_euphorie_8and2")
                                .resizable()
                                .frame(width: getRelativeWidth(370.0), height: getRelativeHeight(511.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(29.0))
                            HStack {
                                Image("img_heart_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(30.0),
                                           height: getRelativeWidth(30.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Image("img_message_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(30.0),
                                           height: getRelativeWidth(30.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(37.0))
                                Image("img_price_tag_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(30.0),
                                           height: getRelativeWidth(30.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(36.0))
                                Image("img_bookmark_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(30.0),
                                           height: getRelativeWidth(30.0), alignment: .center)
                                    .scaledToFit()
                                    .position(x:getRelativeX(0),y:getRelativeY(15))
                                    .padding(.leading, getRelativeWidth(177.0))
                            }
                            .position(x:getRelativeX(180),y:getRelativeY(5))
                            .frame(width: getRelativeWidth(370.0), height: getRelativeHeight(30.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(29.0))
                            .padding(.horizontal, getRelativeWidth(30.0))
                            HStack {
                                Image("img_rectangle_16")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .position(x:getRelativeX(-70), y:getRelativeY(10))
                                Text(StringConstants.kMsgLikedByMinhgaa)
                                    .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Teal900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(204.0),
                                           height: getRelativeHeight(19.0), alignment: .topLeading)
                                    .position(x:getRelativeX(-70), y:getRelativeY(10))
                                    .padding(.leading, getRelativeWidth(6.0))
                            }
                            .frame(width: getRelativeWidth(230.0), height: getRelativeHeight(21.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(0.0))
                            .padding(.leading, getRelativeWidth(15.0))
                            
                        }
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .background(ColorConstants.WhiteA700)
                        .position(x:getRelativeX(215),y:getRelativeY(440))
                    }
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
                                NavigationLink(destination: CreatePostView()) {
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
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
        }
        .navigationBarHidden(true)
    }
}
    
struct MainpageView_Previews: PreviewProvider {
    static var previews: some View {
        MainpageView()
    }
}
