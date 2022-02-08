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
            Image("baconAndEgg")

                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: 300, alignment: .center)
                .cornerRadius(bottomLeft, corners: .bottomLeft)
                .edgesIgnoringSafeArea(.all)
                .shadow(color: Color.black.opacity(0.9), radius:30, x:0,y:10)
            
            VStack {
                Spacer()
                HStack {
                    Text("Breakfast")
                        .font(.largeTitle)
                        .bold()
                        .padding([.leading, .bottom])
                        .shadow(color: Color.black.opacity(0.2), radius:1, x:0,y:5)
                    Spacer()
                }
            }
            
        }
    }
}

struct HomeScreenTopSection_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenTopSectionView()
    }
}
