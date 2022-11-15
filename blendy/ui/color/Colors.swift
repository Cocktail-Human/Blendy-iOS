//
//  Colors.swift
//  blendy
//
//  Created by 양승민 on 2022/11/15.
//

import Foundation
import SwiftUI

struct LightColors {
    public static let primary = Color(#colorLiteral(red: 0.7021681666, green: 0.1888548136, blue: 0.1374053359, alpha: 1))
}

struct DarkColors {
    public static let primary = Color(#colorLiteral(red: 1, green: 0.5411764706, blue: 0.4666666667, alpha: 1))
}

struct Colors {
    
    static func primary(forScheme scheme: ColorScheme) -> Color {
        
        switch scheme {
        case .light : return LightColors.primary
        case .dark : return DarkColors.primary
        @unknown default: return LightColors.primary
        }
    }
}
