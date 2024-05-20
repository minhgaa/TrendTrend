import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kRobotoRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoRegular, size: size)
    }

    static func kRobotoBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoBold, size: size)
    }

    static func kRobotoLight(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoLight, size: size)
    }

    static func kRobotoThin(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoThin, size: size)
    }
    
    static func kPacificoRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPacificoRegular, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kRobotoRegular":
            result = self.kRobotoRegular(size: size)
        case "kRobotoBold":
            result = self.kRobotoBold(size: size)
        case "kRobotoLight":
            result = self.kRobotoLight(size: size)
        case "kRobotoThin":
            result = self.kRobotoThin(size: size)
        case "kPacificoRegular":
            result = self.kPacificoRegular(size: size)
        default:
            result = self.kRobotoRegular(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoRegular: String = "Roboto-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoBold: String = "Roboto-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoLight: String = "Roboto-Light"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoThin: String = "Roboto-Thin"
        /**
         * Please Add this fonts Manually
         */
        static let kPacificoRegular: String = "Pacifico-Regular"
    }
}
