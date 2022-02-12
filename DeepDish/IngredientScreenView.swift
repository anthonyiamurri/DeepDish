//
//  IngredientScreenView.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/8/22.
//

import SwiftUI

struct IngredientScreenView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        ZStack {
            Image("backgroundPattern")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .accessibilityHidden(true)
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
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action : {
                self.mode.wrappedValue.dismiss()
            }){
                Text("\(Image(systemName: "chevron.backward")) Back")
                    .padding(6)
                    .foregroundColor(.white)
                    .background(Color.red)
                            .cornerRadius(20.0)
                            .padding(6.0)
                
            })
        }
    }
}
struct IngredientScreenView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientScreenView()
    }
}
