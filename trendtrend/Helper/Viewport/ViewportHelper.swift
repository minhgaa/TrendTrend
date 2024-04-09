//
// ViewportHelper.swift
//

import Foundation
import UIKit

func getRelativeHeight(_ size: CGFloat) -> CGFloat {
    return (size * (CGFloat(UIScreen.main.bounds.height) / 932.0)) * 0.97
}

func getRelativeWidth(_ size: CGFloat) -> CGFloat {
    return size * (CGFloat(UIScreen.main.bounds.width) / 430.0)
}

func getRelativeFontSize(_ size: CGFloat) -> CGFloat {
    return size * (CGFloat(UIScreen.main.bounds.width) / 430.0)
}

func getRelativeY(_ y: CGFloat) -> CGFloat {
  let screenHeight = UIScreen.main.bounds.height
  return (y * screenHeight) / 932.0
}

func getRelativeX(_ x: CGFloat) -> CGFloat {
  let screenWidth = UIScreen.main.bounds.width
  return (x * screenWidth) / 430.0
}
