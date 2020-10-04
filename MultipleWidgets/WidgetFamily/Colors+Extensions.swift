///**
/**

WidgetFamilyExtension
CREATED BY:  DEVTECHIE INTERACTIVE, INC. ON 7/26/20
COPYRIGHT (C) DEVTECHIE, DEVTECHIE INTERACTIVE, INC

*/

import SwiftUI

extension Color {
    static func random(opacity: Double) -> Color {
        return Color(.sRGB, red: Double.random(in: 0...1), green: Double.random(in: 0...1), blue: Double.random(in: 0...1), opacity: opacity)
    }
}
