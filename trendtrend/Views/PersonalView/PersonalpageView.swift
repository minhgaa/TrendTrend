import SwiftUI

struct PersonalpageView: View {
    @StateObject var personalpageViewModel = PersonalpageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack{
                    Text(StringConstants.kLblBlckman)
                        .font(FontScheme.kRobotoLight(size: getRelativeHeight(20.0)))
                        .foregroundColor(ColorConstants.Black900)
                        .position(x:getRelativeX(265),y:getRelativeY(60))
                    Image("img_right_arrow_1")
                        .resizable()
                        .frame(width: getRelativeWidth(30.0),
                               height: getRelativeWidth(30.0), alignment: .center)
                        .position(x:getRelativeX(450),y:getRelativeY(20))
                }
                .frame(width: getRelativeWidth(526.0), height: getRelativeHeight(85.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 40.0, topRight: 40.0,
                                           bottomLeft: 0, bottomRight: 0)
                    .fill(ColorConstants.WhiteA700))
                ScrollView(.vertical) {
                    VStack {
                        ZStack(alignment: .top) {
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
                                        .kRobotoRegular(size: getRelativeHeight(24.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(105.0),
                                           height: getRelativeHeight(29.0), alignment: .topLeading)
                                    .padding(.top, getRelativeWidth(47.0))
                                HStack {
                                    VStack {
                                        Text(StringConstants.kLbl206)
                                            .font(FontScheme
                                                .kRobotoRegular(size: getRelativeHeight(20.0)))
                                            
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(34.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLblPosts)
                                            .font(FontScheme
                                                .kRobotoThin(size: getRelativeHeight(13.0)))
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(33.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(0.0))
                                    }
                                    .frame(width: getRelativeWidth(34.0),
                                           height: getRelativeHeight(46.0), alignment: .center)
                                    VStack {
                                        Text(StringConstants.kLbl206k)
                                            .font(FontScheme
                                                .kRobotoRegular(size: getRelativeHeight(20.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(44.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLblFollowers)
                                            .font(FontScheme
                                                .kRobotoThin(size: getRelativeHeight(13.0)))
                                            .fontWeight(.light)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(55.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(0.0))
                                    }
                                    .frame(width: getRelativeWidth(55.0),
                                           height: getRelativeHeight(46.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(26.0))
                                    VStack {
                                        Text(StringConstants.kLbl206)
                                            .font(FontScheme
                                                .kRobotoRegular(size: getRelativeHeight(20.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(34.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLblFollowings)
                                            .font(FontScheme
                                                .kRobotoThin(size: getRelativeHeight(13.0)))
                                            .fontWeight(.light)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(61.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(0.0))
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
                                                .kRobotoRegular(size: getRelativeHeight(16.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Teal900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(27.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                    }
                                    .frame(width: getRelativeWidth(64.0),
                                           height: getRelativeHeight(64.0), alignment: .center)
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
                                                .kRobotoRegular(size: getRelativeHeight(16.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Teal900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(17.0),
                                                   height: getRelativeHeight(19.0),
                                                   alignment: .topLeading)
                                        
                                    }
                                    .frame(width: getRelativeWidth(64.0),
                                           height: getRelativeHeight(64.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 32.0, topRight: 32.0,
                                                            bottomLeft: 32.0, bottomRight: 32.0)
                                        .stroke(ColorConstants.Teal900,
                                                lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 32.0, topRight: 32.0,
                                                               bottomLeft: 32.0, bottomRight: 32.0)
                                        .fill(ColorConstants.WhiteA700))
                                    .padding(.leading, getRelativeWidth(3.0))
                                    ZStack {
                                        Button{
                                        }label:{
                                            Image("img_more_4_1")
                                                .resizable()
                                                .frame(width: getRelativeWidth(20.0),
                                                       height: getRelativeWidth(20.0),
                                                       alignment: .trailing)
                                                .padding(.trailing, getRelativeHeight(21.0))
                                                .padding(.leading, getRelativeWidth(22.0))
                                        }
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(64.0),
                                           height: getRelativeHeight(64.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 32.0, topRight: 32.0,
                                                            bottomLeft: 32.0, bottomRight: 32.0)
                                        .stroke(ColorConstants.Teal900,
                                                lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 32.0, topRight: 32.0,
                                                               bottomLeft: 32.0, bottomRight: 32.0)
                                        .fill(ColorConstants.Teal900))
                                    .padding(.leading, getRelativeWidth(3.0))
                                }
                                .frame(width: getRelativeWidth(211.0),
                                       height: getRelativeHeight(61.0), alignment: .center)
                                .padding(.top, getRelativeHeight(13.0))
                                Button(action: {}, label: {
                                        Text(StringConstants.kLblFollow)
                                            .font(FontScheme
                                                .kRobotoRegular(size: getRelativeHeight(14.0)))
                                            .padding(.horizontal, getRelativeWidth(30.0))
                                            .padding(.vertical, getRelativeHeight(9.0))
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .frame(width: getRelativeWidth(184.0),
                                                   height: getRelativeHeight(40.0),
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
                                                                    })
                            }
                            .frame(width: getRelativeWidth(211.0), height: getRelativeHeight(225.0),
                                   alignment: .bottomTrailing)
                            .padding(.top, getRelativeHeight(100.61))
                            .padding(.leading, getRelativeWidth(203.0))
                            .position(x:getRelativeX(210),y:getRelativeY(140))
                            
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
                            .position(x:getRelativeX(210),y:getRelativeY(220))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(414.0), height: getRelativeHeight(400.0),
                               alignment: .center)
                        .position(x:getRelativeX(210),y:getRelativeY(180))
                        VStack{
                            HStack {
                                Button{
                                }label:{
                                    Image("img_sorting_1")
                                        .resizable()
                                        .frame(width: getRelativeWidth(30.0),
                                               height: getRelativeWidth(30.0), alignment: .center)
                                        .scaledToFit()
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                }
                                Button{
                                }label:{
                                    Image("shopping-bag-5")
                                        .resizable()
                                        .frame(width: getRelativeWidth(30.0),
                                               height: getRelativeWidth(30.0), alignment: .center)
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                }
                                Button{
                                }label:{
                                    Image("img_more_3_1")
                                        .resizable()
                                        .rotationEffect(Angle.degrees(90))
                                        .frame(width: getRelativeWidth(30.0),
                                               height: getRelativeWidth(30.0), alignment: .center)
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                }
                            }
                            .frame(width: getRelativeWidth(206.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .padding(.top,getRelativeHeight(-50))
                        }
                        .frame(width: UIScreen.main.bounds.width,height: getRelativeHeight(1), alignment: .top)
                        .background(ColorConstants.Black900)
                        .padding(.top,getRelativeHeight(-120))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(575.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(18.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .top)
            .background(ColorConstants.WhiteA700)
            .position(x:getRelativeX(212),y:getRelativeY(410))
            HStack {
                Button{
                }label:{
                    Image("img_homepage_1")
                        .resizable()
                        .frame(width: getRelativeWidth(30.0),
                               height: getRelativeWidth(30.0), alignment: .center)
                        .scaledToFit()
                        .clipped()
                }
                Button{
                }label:{
                    Image("img_search_4_1")
                        .resizable()
                        .frame(width: getRelativeWidth(30.0),
                               height: getRelativeWidth(30.0), alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(45.0))
                }
                Button{
                }label:{
                    Image("img_shopping_bag_2_1")
                        .resizable()
                        .frame(width: getRelativeWidth(30.0),
                               height: getRelativeWidth(30.0), alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(45.0))
                }
                Button{
                }label:{
                    Image("user-2")
                        .resizable()
                        .frame(width: getRelativeWidth(30.0),
                               height: getRelativeWidth(30.0), alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(45.0))
                }
            }
            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(100.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 40.0, topRight: 40.0,
                                       bottomLeft: 0, bottomRight: 0)
                .fill(ColorConstants.Teal900))
            
        }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
        
    }
    struct PersonalpageView_Previews: PreviewProvider {
        static var previews: some View {
            PersonalpageView()
        }
    }
}
