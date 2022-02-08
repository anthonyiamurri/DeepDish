//
//  View+cornerRadius.swift
//  DeepDish
//
//  Created by Tom Phillips on 2/8/22.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}
