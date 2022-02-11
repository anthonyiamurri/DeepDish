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
            VStack {
                HomeScreenTopSectionView()
                Spacer().frame(height:100)
                BottomSection()
                    .overlay(VStack {
                        Text("Ingredient")
                            .underline(color: .red)
                            .font(.largeTitle)
                            .bold()
                            .padding(6)
                            .foregroundColor(.black)
                        HStack {
                            VStack(alignment: .leading)  {
                                Label("Lorem Ipsum", systemImage: "person.crop.circle")
                                    .font(.title)
                                    .padding()
                                Label("Lorem Ipsum", systemImage: "person.crop.circle")
                                    .font(.title)
                                    .padding()
                                Label("Lorem Ipsum is the language of code", systemImage: "person.crop.circle")
                                    .font(.title)
                                    .padding()
                                Label("Lorem Ipsum", systemImage: "person.crop.circle")
                                    .font(.title)
                                    .padding()
                                Spacer ()
                                
                            }
                            
                            Spacer ()
                                
                            
                        }
                    })
                    
            }
        }
        
    }
}
struct IngredientScreenView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientScreenView()
    }
}
