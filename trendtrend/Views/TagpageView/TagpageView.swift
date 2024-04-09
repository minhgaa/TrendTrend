import SwiftUI

struct TagpageView: View {
    @StateObject var tagpageViewModel = TagpageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        HStack {
                            Text(StringConstants.kLblNewFeed)
                                .font(FontScheme.kRobotoRomanRegular(size: getRelativeHeight(24.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Teal900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(105.0),
                                       height: getRelativeHeight(29.0), alignment: .topLeading)
                            Image("img_notification_1")
                                .resizable()
                                .frame(width: getRelativeWidth(30.0),
                                       height: getRelativeWidth(30.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
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
                                    .clipShape(Circle())
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblBlackman)
                                        .font(FontScheme
                                            .kRobotoRomanRegular(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(88.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Text(StringConstants.kLblBlckman)
                                        .font(FontScheme
                                            .kRobotoRomanLight(size: getRelativeHeight(15.0)))
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
                                        .kRobotoRomanExtraLight(size: getRelativeHeight(20.0)))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(37.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(26.0))
                                    .padding(.leading, getRelativeWidth(24.0))
                            }
                            .frame(width: getRelativeWidth(212.0), height: getRelativeHeight(51.0),
                                   alignment: .center)
                            Image("img_more_3_1")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(10.0))
                                .padding(.leading, getRelativeWidth(147.0))
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(51.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(30.0))
                        .padding(.leading, getRelativeWidth(30.0))
                        .padding(.trailing, getRelativeWidth(20.0))
                        ZStack(alignment: .bottomTrailing) {
                            Image("img_euphorie_8and2")
                                .resizable()
                                .frame(width: getRelativeWidth(370.0),
                                       height: getRelativeHeight(511.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            VStack(alignment: .trailing, spacing: 0) {
                                HStack {
                                    Divider()
                                        .frame(width: getRelativeWidth(74.0),
                                               height: getRelativeHeight(26.0), alignment: .bottom)
                                        .background(ColorConstants.WhiteA700)
                                        .padding(.top, getRelativeHeight(22.0))
                                    Button(action: {}, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblBoomberJacket)
                                                .font(FontScheme
                                                    .kRobotoRomanRegular(size: getRelativeHeight(10.0)))
                                                .fontWeight(.regular)
                                                .padding(.horizontal, getRelativeWidth(9.0))
                                                .padding(.vertical, getRelativeHeight(15.0))
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(96.0),
                                                       height: getRelativeHeight(43.0),
                                                       alignment: .topLeading)
                                                .background(RoundedCorners(topLeft: 20.0,
                                                                           topRight: 20.0,
                                                                           bottomLeft: 20.0,
                                                                           bottomRight: 20.0)
                                                        .fill(ColorConstants.WhiteA700))
                                                .padding(.bottom, getRelativeHeight(5.0))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(96.0),
                                           height: getRelativeHeight(43.0), alignment: .topLeading)
                                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                               bottomLeft: 20.0, bottomRight: 20.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.bottom, getRelativeHeight(5.0))
                                }
                                .frame(width: getRelativeWidth(169.0),
                                       height: getRelativeHeight(48.0), alignment: .trailing)
                                HStack {
                                    Divider()
                                        .frame(width: getRelativeWidth(123.0),
                                               height: getRelativeHeight(25.0), alignment: .top)
                                        .background(ColorConstants.WhiteA700)
                                        .padding(.bottom, getRelativeHeight(18.0))
                                    Button(action: {}, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblShirt)
                                                .font(FontScheme
                                                    .kRobotoRomanRegular(size: getRelativeHeight(10.0)))
                                                .fontWeight(.regular)
                                                .padding(.horizontal, getRelativeWidth(30.0))
                                                .padding(.vertical, getRelativeHeight(15.0))
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(96.0),
                                                       height: getRelativeHeight(43.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 20.0,
                                                                           topRight: 20.0,
                                                                           bottomLeft: 20.0,
                                                                           bottomRight: 20.0)
                                                        .fill(ColorConstants.WhiteA700))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(96.0),
                                           height: getRelativeHeight(43.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                               bottomLeft: 20.0, bottomRight: 20.0)
                                            .fill(ColorConstants.WhiteA700))
                                }
                                .frame(width: getRelativeWidth(218.0),
                                       height: getRelativeHeight(43.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(41.0))
                                .padding(.leading, getRelativeWidth(6.0))
                                HStack {
                                    Divider()
                                        .frame(width: getRelativeWidth(114.0),
                                               height: getRelativeHeight(16.0), alignment: .bottom)
                                        .background(ColorConstants.WhiteA700)
                                        .padding(.vertical, getRelativeHeight(21.0))
                                    Button(action: {}, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblPant)
                                                .font(FontScheme
                                                    .kRobotoRomanRegular(size: getRelativeHeight(10.0)))
                                                .fontWeight(.regular)
                                                .padding(.horizontal, getRelativeWidth(30.0))
                                                .padding(.vertical, getRelativeHeight(15.0))
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(96.0),
                                                       height: getRelativeHeight(43.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 20.0,
                                                                           topRight: 20.0,
                                                                           bottomLeft: 20.0,
                                                                           bottomRight: 20.0)
                                                        .fill(ColorConstants.WhiteA700))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(96.0),
                                           height: getRelativeHeight(43.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                               bottomLeft: 20.0, bottomRight: 20.0)
                                            .fill(ColorConstants.WhiteA700))
                                }
                                .frame(width: getRelativeWidth(211.0),
                                       height: getRelativeHeight(43.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(46.0))
                                .padding(.leading, getRelativeWidth(16.0))
                                HStack {
                                    Divider()
                                        .frame(width: getRelativeWidth(131.0),
                                               height: getRelativeHeight(10.0), alignment: .bottom)
                                        .background(ColorConstants.WhiteA700)
                                        .padding(.vertical, getRelativeHeight(22.0))
                                    Button(action: {}, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblShoes)
                                                .font(FontScheme
                                                    .kRobotoRomanRegular(size: getRelativeHeight(10.0)))
                                                .fontWeight(.regular)
                                                .padding(.horizontal, getRelativeWidth(30.0))
                                                .padding(.vertical, getRelativeHeight(15.0))
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(96.0),
                                                       height: getRelativeHeight(43.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 20.0,
                                                                           topRight: 20.0,
                                                                           bottomLeft: 20.0,
                                                                           bottomRight: 20.0)
                                                        .fill(ColorConstants.WhiteA700))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(96.0),
                                           height: getRelativeHeight(43.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                               bottomLeft: 20.0, bottomRight: 20.0)
                                            .fill(ColorConstants.WhiteA700))
                                }
                                .frame(width: getRelativeWidth(227.0),
                                       height: getRelativeHeight(43.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(77.0))
                            }
                            .frame(width: getRelativeWidth(227.0), height: getRelativeHeight(341.0),
                                   alignment: .bottomTrailing)
                            .padding(.top, getRelativeHeight(135.0))
                            .padding(.leading, getRelativeWidth(111.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(370.0), height: getRelativeHeight(511.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(29.0))
                        HStack {
                            Image("img_heart_2_1")
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
                                .padding(.leading, getRelativeWidth(38.0))
                            Image("img_price_tag_2_1")
                                .resizable()
                                .frame(width: getRelativeWidth(30.0),
                                       height: getRelativeWidth(30.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(38.0))
                            Image("img_bookmark_1")
                                .resizable()
                                .frame(width: getRelativeWidth(30.0),
                                       height: getRelativeWidth(30.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(175.0))
                        }
                        .frame(width: getRelativeWidth(371.0), height: getRelativeHeight(30.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(29.0))
                        .padding(.horizontal, getRelativeWidth(29.0))
                        HStack {
                            Image("img_rectangle_16")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .center)
                                .scaledToFit()
                                .clipShape(Circle())
                                .clipShape(Circle())
                            Text(StringConstants.kMsgLikedByMinhgaa)
                                .font(FontScheme.kRobotoRomanRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Teal900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(204.0),
                                       height: getRelativeHeight(19.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(6.0))
                        }
                        .frame(width: getRelativeWidth(230.0), height: getRelativeHeight(21.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(24.0))
                        .padding(.leading, getRelativeWidth(30.0))
                        HStack {
                            ZStack(alignment: .center) {
                                ZStack {
                                    Image("img_search_3_1")
                                        .resizable()
                                        .frame(width: getRelativeWidth(30.0),
                                               height: getRelativeWidth(30.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.bottom, getRelativeHeight(32.0))
                                        .padding(.horizontal, getRelativeWidth(25.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(80.0),
                                       height: getRelativeWidth(80.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(62.0))
                                .padding(.leading, getRelativeWidth(116.0))
                                .padding(.trailing, getRelativeWidth(130.0))
                                ZStack(alignment: .topLeading) {
                                    HStack {
                                        Spacer()
                                        Image("img_homepage_1")
                                            .resizable()
                                            .frame(width: getRelativeWidth(30.0),
                                                   height: getRelativeWidth(30.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.vertical, getRelativeHeight(1.0))
                                        Image("img_search_4_1")
                                            .resizable()
                                            .frame(width: getRelativeWidth(30.0),
                                                   height: getRelativeWidth(30.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.vertical, getRelativeHeight(1.0))
                                            .padding(.leading, getRelativeWidth(45.0))
                                        Image("img_shopping_bag_2_1")
                                            .resizable()
                                            .frame(width: getRelativeWidth(30.0),
                                                   height: getRelativeWidth(30.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(60.0))
                                            .padding(.leading, getRelativeWidth(45.0))
                                    }
                                    .frame(width: getRelativeWidth(326.0),
                                           height: getRelativeHeight(147.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                               bottomLeft: 20.0, bottomRight: 20.0))
                                    .padding(.top, getRelativeHeight(5.0))
                                    ZStack(alignment: .center) {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(15.0),
                                                   height: getRelativeHeight(25.0),
                                                   alignment: .topLeading)
                                            .background(RoundedCorners(topLeft: 7.0, topRight: 7.0,
                                                                       bottomLeft: 7.0,
                                                                       bottomRight: 7.0)
                                                    .fill(ColorConstants.WhiteA700))
                                            .padding(.bottom, getRelativeHeight(9.0))
                                            .padding(.trailing, getRelativeWidth(12.0))
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(26.0),
                                                   height: getRelativeHeight(29.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 13.0,
                                                                       topRight: 13.0,
                                                                       bottomLeft: 13.0,
                                                                       bottomRight: 13.0)
                                                    .fill(ColorConstants.Teal900))
                                            .padding(.top, getRelativeHeight(5.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(27.0),
                                           height: getRelativeHeight(34.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(118.0))
                                    .padding(.trailing, getRelativeWidth(224.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(326.0),
                                       height: getRelativeHeight(152.0), alignment: .center)
                                .padding(.top, getRelativeHeight(20.0))
                                ZStack {
                                    Button(action: {}, label: {
                                        Image("img_more_1")
                                    })
                                    .frame(width: getRelativeWidth(50.0),
                                           height: getRelativeWidth(50.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(28.0))
                                    .padding(.trailing, getRelativeWidth(15.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(76.0),
                                       height: getRelativeHeight(90.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.bottom, getRelativeHeight(82.0))
                                .padding(.trailing, getRelativeWidth(250.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(172.0),
                                   alignment: .center)
                            Image("img_rectangle_15")
                                .resizable()
                                .frame(width: getRelativeWidth(70.0),
                                       height: getRelativeWidth(70.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0))
                                .padding(.vertical, getRelativeHeight(39.0))
                                .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(412.0), height: getRelativeHeight(172.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(15.0))
                        .padding(.trailing, getRelativeWidth(18.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                }
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
    }
}

struct TagpageView_Previews: PreviewProvider {
    static var previews: some View {
        TagpageView()
    }
}
