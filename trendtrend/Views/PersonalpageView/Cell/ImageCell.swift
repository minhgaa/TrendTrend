import SwiftUI

struct ImageCell: View {
    var body: some View {
        Image("img_image_7")
            .frame(width: getRelativeWidth(138.0), alignment: .leading)
            .resizable()
            .scaledToFit()
            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                       bottomRight: 20.0))
    }
}

/* struct ImageCell_Previews: PreviewProvider {

 static var previews: some View {
 			ImageCell()
 }
 } */
