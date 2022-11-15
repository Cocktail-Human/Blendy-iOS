//
//  Buttons.swift
//  blendy
//
//  Created by 양승민 on 2022/11/15.
//

import Foundation
import SwiftUI
import UIKit

struct MediumButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(RoundedRectangle(cornerRadius: 16).fill(Color("Primary")))
    }
}
