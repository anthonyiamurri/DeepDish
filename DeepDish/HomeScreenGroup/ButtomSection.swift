//
//  ButtomSection.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/8/22.
//

import SwiftUI

struct ButtomSection: View {
    var topLeft: CGFloat = 50
    var body: some View {
        Rectangle()
            .frame(height: 450)
            .edgesIgnoringSafeArea(.all)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .cornerRadius(topLeft, corners: .topLeft)
            .shadow(color: Color.black.opacity(0.9), radius:30, x:0,y:-10)
    }
}

struct ButtomSection_Previews: PreviewProvider {
    static var previews: some View {
        ButtomSection()
    }
}
