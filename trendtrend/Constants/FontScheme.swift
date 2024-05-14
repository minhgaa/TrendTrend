import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kRobotoRomanRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoRomanRegular, size: size)
    }

    static func kRobotoRomanBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoRomanBold, size: size)
    }

    static func kRobotoRomanLight(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoRomanLight, size: size)
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
        case "kRobotoRomanRegular":
            result = self.kRobotoRomanRegular(size: size)
        case "kRobotoRomanBold":
            result = self.kRobotoRomanBold(size: size)
        case "kRobotoRomanLight":
            result = self.kRobotoRomanLight(size: size)
        case "kRobotoThin":
            result = self.kRobotoThin(size: size)
        case "kPacificoRegular":
            result = self.kPacificoRegular(size: size)
        default:
            result = self.kRobotoRomanRegular(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoRomanRegular: String = "RobotoRoman-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoRomanBold: String = "RobotoRoman-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoRomanLight: String = "RobotoRoman-Light"
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
