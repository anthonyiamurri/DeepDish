//
//  ButtomSection.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/8/22.
//

import SwiftUI

struct BottomSection: View {
    var topLeft: CGFloat = 50
    var body: some View {
        Rectangle()
//            .frame(height: 500)
            .edgesIgnoringSafeArea(.horizontal)
            .edgesIgnoringSafeArea(.top)
            .foregroundColor(Color("Background"))
            .cornerRadius(topLeft, corners: .topLeft)
            //.shadow(color: Color.black.opacity(0.4), radius:30, x:0,y:-5)
            .shadow(color: Color.black.opacity(0.6), radius:8, x:0,y:-5)
    }
}

struct ButtomSection_Previews: PreviewProvider {
    static var previews: some View {
        BottomSection()
    }
}
