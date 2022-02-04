//
//  TestScreen.swift
//  DeepDish
//
//  Created by Anthony Iamurri on 2/4/22.
//

import SwiftUI

struct TestScreen: View {
    var topLeft: CGFloat = 0
    var topRight: CGFloat = 50
    var bottomLeft: CGFloat = 50
    var bottomRight: CGFloat = 0

    var body: some View {
        Image("asparagus")
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100, alignment: .center)
//            .clipShape(Rectangle())
            .cornerRadius(bottomLeft, corners: .bottomLeft)
    }
}

struct TestScreen_Previews: PreviewProvider {
    static var previews: some View {
        TestScreen()
    }
}
