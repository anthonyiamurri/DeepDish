//
//  HomeScreenTopSection.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/7/22.
//

import SwiftUI

struct HomeScreenTopSectionView: View {
    var bottomLeft: CGFloat = 50
    
    var body: some View {
        ZStack {
            Image("bacon and Egg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: 350, alignment: .center)
                .cornerRadius(bottomLeft, corners: .bottomLeft)
                .accessibilityHidden(true)
                .overlay(ZStack {
                    Text("Breakfast")
                        .font(.largeTitle)
                        .bold()
                        .padding(6)
                        .foregroundColor(.white)
                        .accessibilityHint("Meal of the day is breakfast")
                }.background(Color.red)
                            .opacity(0.8)
                            .cornerRadius(20.0)
                            .padding(6.0)
                         , alignment: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                .shadow(color: Color.black.opacity(0.9), radius:30, x:0,y:10)
            
        }
    }

}

struct HomeScreenTopSection_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenTopSectionView()
    }
}
