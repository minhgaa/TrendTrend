import SwiftUI

struct BodymeasureView: View {
    @StateObject var bodymeasureViewModel = BodymeasureViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                ZStack(alignment: .leading) {
                    Text(StringConstants.kLblBody)
                        .font(FontScheme.kRobotoRegular(size: getRelativeHeight(96.0)))
                        .rotationEffect(Angle.degrees(90))
                        .foregroundColor(ColorConstants.Teal900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .position(x:getRelativeX(40),y:getRelativeY(160))
                    Text(StringConstants.kLblMeasurements)
                        .font(FontScheme.kRobotoRegular(size: getRelativeHeight(32.0)))
                        .rotationEffect(Angle.degrees(90))
                        .foregroundColor(ColorConstants.Teal900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .position(x:getRelativeX(20),y:getRelativeY(400))
                    VStack {
                        HStack {
                            TextField(StringConstants.kLblSleeve,
                                      text: $bodymeasureViewModel.sleevevalueoneText)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                                .foregroundColor(ColorConstants.Teal900)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(140.0), height: getRelativeHeight(48.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                bottomRight: 10.0)
                                .stroke(ColorConstants.Teal900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.WhiteA700))
                        HStack {
                            TextField(StringConstants.kLblChest,
                                      text: $bodymeasureViewModel.chestvalueoneText)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                                .foregroundColor(ColorConstants.Teal900)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(140.0), height: getRelativeHeight(48.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                bottomRight: 10.0)
                                .stroke(ColorConstants.Teal900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.top, getRelativeHeight(19.0))
                        HStack {
                            TextField(StringConstants.kLblWaist,
                                      text: $bodymeasureViewModel.waistvalueoneText)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                                .foregroundColor(ColorConstants.Teal900)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(140.0), height: getRelativeHeight(48.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                bottomRight: 10.0)
                                .stroke(ColorConstants.Teal900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.top, getRelativeHeight(16.0))
                        HStack {
                            TextField(StringConstants.kLblInseam,
                                      text: $bodymeasureViewModel.inseamvalueoneText)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(16.0)))
                                .foregroundColor(ColorConstants.Teal900)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(140.0), height: getRelativeHeight(48.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                bottomRight: 10.0)
                                .stroke(ColorConstants.Teal900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.top, getRelativeHeight(20.0))
                        
                    }
                    .frame(width: getRelativeWidth(140.0), height: getRelativeHeight(247.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(438.68))
                    .padding(.leading, getRelativeWidth(131.0))
                    .padding(.trailing, getRelativeWidth(138.0))
                    .position(x:getRelativeX(205),y:getRelativeY(330))
                    ZStack(alignment: .center) {
                        HStack {
                            TextField(StringConstants.kLblHeight,
                                      text: $bodymeasureViewModel.heightvalueoneText)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(50.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .frame(width: getRelativeWidth(85.0),
                                       height: getRelativeHeight(101), alignment: .topLeading)
                                .position(x:getRelativeX(-5),y:getRelativeY(70))
                                .rotationEffect(Angle.degrees(-40))
                    
                            Text(StringConstants.kLblKg)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(20.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(32.0),
                                       height: getRelativeHeight(35.0), alignment: .topLeading)
                                .position(x:getRelativeX(15),y:getRelativeY(40))
                                .padding(.bottom, getRelativeHeight(54.0))
                                .padding(.leading, getRelativeWidth(4.0))
                                .rotationEffect(Angle.degrees(-40))
                        }
                        .frame(width: getRelativeWidth(102.0), height: getRelativeHeight(90.0),
                               alignment: .center)
                        .padding(.bottom, getRelativeHeight(104.24))
                        .padding(.leading, getRelativeWidth(70.81))
                        .padding(.trailing, getRelativeWidth(66.19))
                        ZStack(alignment: .bottomLeading) {
                            ZStack(alignment: .center){}
                            .frame(width: getRelativeWidth(250.0), height: getRelativeWidth(6.0),
                                   alignment: .topLeading)
                            .background(ColorConstants.WhiteA700)
                            .rotationEffect(Angle.degrees(-40))
                            .position(x:getRelativeX(-20), y:getRelativeY(30))
                            Text(StringConstants.kLblCm)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(20.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(33.0),
                                       height: getRelativeHeight(43.0), alignment: .topLeading)
                                .padding(.bottom, getRelativeHeight(76.0))
                                .padding(.leading, getRelativeWidth(71.84))
                                .position(x:getRelativeX(55),y:getRelativeY(55))
                                .rotationEffect(Angle.degrees(-40))
                            TextField(StringConstants.kLblWeight,
                                      text: $bodymeasureViewModel.weightvalueoneText)
                                .font(FontScheme.kRobotoRegular(size: getRelativeHeight(50.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .frame(width: getRelativeWidth(85.0),
                                       height: getRelativeHeight(101), alignment: .topLeading)
                                .position(x:getRelativeX(6),y:getRelativeY(70))
                                .rotationEffect(Angle.degrees(-20))
                                .position(x:getRelativeX(55),y:getRelativeY(30))
                                .rotationEffect(Angle.degrees(340))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(105.0), height: getRelativeHeight(119.0),
                               alignment: .bottomTrailing)
                        .padding(.top, getRelativeHeight(80.29))
                        .padding(.leading, getRelativeWidth(89.52))
                        
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(200.0), height: getRelativeWidth(200.0),
                           alignment: .topLeading)
                    .background(RoundedCorners(topLeft: 119.0, topRight: 119.0, bottomLeft: 119.0,
                                               bottomRight: 119.0)
                            .fill(ColorConstants.Teal900))
                    .position(x:getRelativeX(200),y:getRelativeY(250))
                    ZStack(alignment: .center) {
                        Image("img_sketch_le_auto_x2")
                            .resizable()
                            .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(677.0),
                                   alignment: .center)
                            .scaledToFit()
                            .padding(.leading, getRelativeWidth(4.0))
                            .position(x:getRelativeX(60),y:getRelativeY(230))
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(104.0), height: getRelativeHeight(492.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(108.92))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(104.0), height: getRelativeHeight(677.0),
                           alignment: .trailing)
                    .padding(.leading, getRelativeWidth(305.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(409.0), height: getRelativeHeight(704.0),
                       alignment: .center)
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblFinish)
                            .font(FontScheme.kRobotoRegular(size: getRelativeHeight(24.0)))
                            .fontWeight(.regular)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(19.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(313.0), height: getRelativeHeight(67.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 33.0, topRight: 33.0,
                                                       bottomLeft: 33.0, bottomRight: 33.0)
                                    .fill(ColorConstants.Teal900))
                            .padding(.top, getRelativeHeight(42.0))
                            .padding(.leading, getRelativeWidth(65.0))
                            .padding(.trailing, getRelativeWidth(52.0))
                    }
                })
                .position(x:getRelativeX(210),y:getRelativeY(50))
                PageIndicator(numPages: 3, currentPage: .constant(2),
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
    }
}

struct BodymeasureView_Previews: PreviewProvider {
    static var previews: some View {
        BodymeasureView()
    }
}
