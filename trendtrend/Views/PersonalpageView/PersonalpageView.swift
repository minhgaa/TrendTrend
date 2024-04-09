import SwiftUI

struct PersonalpageView: View {
    @StateObject var personalpageViewModel = PersonalpageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ZStack(alignment: .bottomTrailing) {
                            Image("img_ellipse_6")
                                .resizable()
                                .frame(width: getRelativeWidth(194.0),
                                       height: getRelativeHeight(400.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.trailing, getRelativeWidth(220.0))
                            VStack {
                                Text(StringConstants.kLblBlackman)
                                    .font(FontScheme
                                        .kRobotoRomanRegular(size: getRelativeHeight(24.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(105.0),
                                           height: getRelativeHeight(29.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(47.0))
                                HStack {
                                    VStack {
                                        Text(StringConstants.kLbl206)
                                            .font(FontScheme
                                                .kRobotoRomanRegular(size: getRelativeHeight(20.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(34.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLblPosts)
                                            .font(FontScheme
                                                .kRobotoRomanLight(size: getRelativeHeight(13.0)))
                                            .fontWeight(.light)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(33.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(6.0))
                                    }
                                    .frame(width: getRelativeWidth(34.0),
                                           height: getRelativeHeight(46.0), alignment: .center)
                                    VStack {
                                        Text(StringConstants.kLbl206k)
                                            .font(FontScheme
                                                .kRobotoRomanRegular(size: getRelativeHeight(20.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(44.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLblFollowers)
                                            .font(FontScheme
                                                .kRobotoRomanLight(size: getRelativeHeight(13.0)))
                                            .fontWeight(.light)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(55.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(6.0))
                                    }
                                    .frame(width: getRelativeWidth(55.0),
                                           height: getRelativeHeight(46.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(26.0))
                                    VStack {
                                        Text(StringConstants.kLbl206)
                                            .font(FontScheme
                                                .kRobotoRomanRegular(size: getRelativeHeight(20.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(34.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLblFollowings)
                                            .font(FontScheme
                                                .kRobotoRomanLight(size: getRelativeHeight(13.0)))
                                            .fontWeight(.light)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(61.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(7.0))
                                    }
                                    .frame(width: getRelativeWidth(61.0),
                                           height: getRelativeHeight(47.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(15.0))
                                }
                                .frame(width: getRelativeWidth(193.0),
                                       height: getRelativeHeight(47.0), alignment: .center)
                                .padding(.top, getRelativeHeight(15.0))
                                .padding(.leading, getRelativeWidth(14.0))
                                HStack {
                                    VStack {
                                        Text(StringConstants.kLbl180)
                                            .font(FontScheme
                                                .kRobotoRomanRegular(size: getRelativeHeight(16.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Teal900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(27.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                    }
                                    .frame(width: getRelativeWidth(64.0),
                                           height: getRelativeHeight(61.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 32.0, topRight: 32.0,
                                                            bottomLeft: 32.0, bottomRight: 32.0)
                                            .stroke(ColorConstants.Teal900,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 32.0, topRight: 32.0,
                                                               bottomLeft: 32.0, bottomRight: 32.0)
                                            .fill(ColorConstants.WhiteA700))
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLbl73)
                                            .font(FontScheme
                                                .kRobotoRomanRegular(size: getRelativeHeight(16.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Teal900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(17.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                    }
                                    .frame(width: getRelativeWidth(64.0),
                                           height: getRelativeHeight(61.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 32.0, topRight: 32.0,
                                                            bottomLeft: 32.0, bottomRight: 32.0)
                                            .stroke(ColorConstants.Teal900,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 32.0, topRight: 32.0,
                                                               bottomLeft: 32.0, bottomRight: 32.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.leading, getRelativeWidth(10.0))
                                    ZStack {
                                        Image("img_more_4_1")
                                            .resizable()
                                            .frame(width: getRelativeWidth(20.0),
                                                   height: getRelativeWidth(20.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(21.0))
                                            .padding(.horizontal, getRelativeWidth(22.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(64.0),
                                           height: getRelativeHeight(61.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 32.0, topRight: 32.0,
                                                            bottomLeft: 32.0, bottomRight: 32.0)
                                            .stroke(ColorConstants.Teal900,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 32.0, topRight: 32.0,
                                                               bottomLeft: 32.0, bottomRight: 32.0)
                                            .fill(ColorConstants.Teal900))
                                    .padding(.leading, getRelativeWidth(9.0))
                                }
                                .frame(width: getRelativeWidth(211.0),
                                       height: getRelativeHeight(61.0), alignment: .center)
                                .padding(.top, getRelativeHeight(13.0))
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblFollow)
                                            .font(FontScheme
                                                .kRobotoRomanRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .padding(.horizontal, getRelativeWidth(30.0))
                                            .padding(.vertical, getRelativeHeight(9.0))
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(184.0),
                                                   height: getRelativeHeight(36.0),
                                                   alignment: .center)
                                            .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                                    bottomLeft: 10.0,
                                                                    bottomRight: 10.0)
                                                    .stroke(ColorConstants.Teal900,
                                                            lineWidth: 1))
                                            .background(RoundedCorners(topLeft: 10.0,
                                                                       topRight: 10.0,
                                                                       bottomLeft: 10.0,
                                                                       bottomRight: 10.0)
                                                    .fill(ColorConstants.Teal900))
                                            .padding(.top, getRelativeHeight(22.0))
                                            .padding(.horizontal, getRelativeWidth(14.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(184.0),
                                       height: getRelativeHeight(36.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                        bottomLeft: 10.0, bottomRight: 10.0)
                                        .stroke(ColorConstants.Teal900,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(ColorConstants.Teal900))
                                .padding(.top, getRelativeHeight(22.0))
                                .padding(.horizontal, getRelativeWidth(14.0))
                            }
                            .frame(width: getRelativeWidth(211.0), height: getRelativeHeight(225.0),
                                   alignment: .bottomTrailing)
                            .padding(.top, getRelativeHeight(100.61))
                            .padding(.leading, getRelativeWidth(203.0))
                            Text(StringConstants.kLblBlckman)
                                .font(FontScheme.kRobotoRomanLight(size: getRelativeHeight(20.0)))
                                .fontWeight(.light)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(93.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.bottom, getRelativeHeight(342.29))
                                .padding(.leading, getRelativeWidth(167.0))
                                .padding(.trailing, getRelativeWidth(154.0))
                            Image("img_right_arrow_1")
                                .resizable()
                                .frame(width: getRelativeWidth(30.0),
                                       height: getRelativeWidth(30.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(340.0))
                                .padding(.leading, getRelativeWidth(378.0))
                            ZStack {
                                Image("img_screenshot_2024_03_21_150x150")
                                    .resizable()
                                    .frame(width: getRelativeWidth(150.0),
                                           height: getRelativeWidth(150.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                    .padding(.vertical, getRelativeHeight(10.0))
                                    .padding(.horizontal, getRelativeWidth(11.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(170.0), height: getRelativeWidth(170.0),
                                   alignment: .topLeading)
                            .background(RoundedCorners(topLeft: 85.0, topRight: 85.0,
                                                       bottomLeft: 85.0, bottomRight: 85.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.bottom, getRelativeHeight(186.0))
                            .padding(.trailing, getRelativeWidth(230.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(414.0), height: getRelativeHeight(400.0),
                               alignment: .center)
                        HStack {
                            Image("img_sorting_1")
                                .resizable()
                                .frame(width: getRelativeWidth(40.0),
                                       height: getRelativeWidth(40.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            PageIndicator(numPages: 5, currentPage: .constant(1),,
                                          selectedColor: Color.blue,
                                          unSelectedColor: Color.gray, spacing: 8.0)
                        }
                        .frame(width: getRelativeWidth(206.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(47.0))
                        ZStack(alignment: .bottomLeading) {
                            Image("img_screenshot_2024_03_21_140x140")
                                .resizable()
                                .frame(width: getRelativeWidth(140.0),
                                       height: getRelativeWidth(140.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(376.0))
                                .padding(.horizontal, getRelativeWidth(146.0))
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
                            .frame(width: getRelativeWidth(80.0), height: getRelativeWidth(80.0),
                                   alignment: .bottomLeading)
                            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                       bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(372.0))
                            .padding(.trailing, getRelativeWidth(234.0))
                            HStack {
                                Image("img_homepage_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(30.0),
                                           height: getRelativeWidth(30.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Image("img_search_4_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(30.0),
                                           height: getRelativeWidth(30.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(45.0))
                            }
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(147.0),
                                   alignment: .center)
                            .background(Image("img_group_45")
                                .resizable()
                                .scaledToFit())
                            .padding(.top, getRelativeHeight(347.0))
                            .padding(.horizontal, getRelativeWidth(52.0))
                            Image("img_screenshot_2024_03_21_140x286")
                                .resizable()
                                .frame(width: getRelativeWidth(286.0),
                                       height: getRelativeHeight(140.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0))
                                .padding(.bottom, getRelativeHeight(435.0))
                                .padding(.trailing, getRelativeWidth(144.0))
                            ScrollView {
                                Grid(0 ..< 6, id: \.self) { index in
                                    ImageCell()
                                }
                            }
                            .gridStyle(StaggeredGridStyle(.vertical, tracks: 1, spacing: 430.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(575.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(18.0))
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

struct PersonalpageView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalpageView()
    }
}
