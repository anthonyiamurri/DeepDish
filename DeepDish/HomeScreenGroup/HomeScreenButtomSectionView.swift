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
                .accessibilityLabel("Meal category list")
            ScrollView{
                VStack {
                    ForEach(Category.TestData){ index in
                        HStack{
                            ForEach(index.categories){ index in
                                Spacer()
                                NavigationLink {
                                    //where does it go
                                    IngredientScreenView()
                                } label: {
                                    //views go here
                                    Image(index.Image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150, height: 150)
                                        .clipShape(RoundedRectangle(cornerRadius: 30))
                                        .shadow(color: Color.black.opacity(0.2), radius:1, x:0,y:5)
                                        .overlay(ZStack {
                                            Text(index.Text)
                                                .font(.callout)
                                                .bold()
                                                .padding(6)
                                                .foregroundColor(.white)
                                        }.background(Color.red)
                                                    .cornerRadius(20.0)
                                                    .padding(6.0)
                                                 , alignment: .bottomTrailing)
                                }
                                .accessibilityLabel("\(index.Text) category")
                                .accessibilityHint("Double Tap to select meal category")
                                
                            }
                            Spacer()
                        }
                        
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
