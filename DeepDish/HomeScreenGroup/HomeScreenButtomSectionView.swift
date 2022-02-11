//
//  CategoriesView.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/7/22.
//

import SwiftUI

struct HomeScreenButtomSectionView: View {
    var topLeft: CGFloat = 50
    
    var body: some View {
        
        VStack {
            Spacer().frame(height:35)
            Rectangle()
                .frame(width: 5, height: 5)
                .foregroundColor(.white)
            ScrollView{
                let gridItems: [GridItem] = Array(repeating: .init(.adaptive(minimum: 200)), count: 2)
                LazyVGrid(columns: gridItems) {
                    ForEach(Categorie.TestData) { categorie in
                        Image(categorie.Image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                            .shadow(color: Color.black.opacity(0.2), radius:1, x:0,y:5)
                            .overlay(ZStack {
                                Text(categorie.Text)
                                    .font(.callout)
                                    .bold()
                                    .padding(6)
                                    .foregroundColor(.white)
                            }.background(Color.red)
                                        .cornerRadius(20.0)
                                        .padding(6.0)
                                     , alignment: .bottomTrailing)
                        
                    }
                }
                
            }
        }
    }
}


struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenButtomSectionView()
        
    }
}
