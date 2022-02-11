//
//  IngredientScreenView.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/8/22.
//

import SwiftUI

struct IngredientScreenView: View {
    var body: some View {
        ZStack {
            Image("backgroundPattern")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                HomeScreenTopSectionView()
                Spacer().frame(height:50)
                BottomSection()
                    .overlay(ZStack {
                        Text("Ingredient")
                            .font(.largeTitle)
                            .bold()
                            .padding(6)
                            .foregroundColor(.black)
                        
                    }, alignment: .top)
            }
        }
    }
}
struct IngredientScreenView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientScreenView()
    }
}
