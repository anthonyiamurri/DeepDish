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
                VStack {
                    ForEach(Categorie.TestData){ index in
                        HStack{
                            ForEach(index.categories){ index in
                                Spacer()
                                Image(index.Image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 150, height: 150)
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                                    .shadow(color: Color.black.opacity(0.2), radius:1, x:0,y:5)
                                    
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
