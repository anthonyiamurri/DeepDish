//
//  HomeScreenTopSection.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/7/22.
//

import SwiftUI

struct HomeScreenTopSectionView: View {
    var bottomLeft: CGFloat = 50
    
    @State var TopMealImage: String
    @State var Meal: String
    var body: some View {
        ZStack {
            Image(TopMealImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: 350, alignment: .center)
                .cornerRadius(bottomLeft, corners: .bottomLeft)
                .accessibilityHidden(true)
                .overlay(ZStack {
                    Text(Meal)
                        .font(.largeTitle)
                        .bold()
                        .padding(6)
                        .foregroundColor(.white)
                        .accessibilityHint("Meal of the day is breakfast")
                }.background(Color.red)
                            .cornerRadius(20.0)
                            .padding(15.0)
                         , alignment: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
                .shadow(color: Color.black.opacity(0.6), radius:8, x:0,y:5)
            
        }
    }

}

struct HomeScreenTopSection_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenTopSectionView(TopMealImage: "bacon and Egg", Meal: "Breakfast")
    }
}
