//
//  ChoosingScreen.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/13/22.
//

import SwiftUI

struct ChoosingScreen: View {
    var body: some View {
        ZStack {
            Image("backgroundPattern")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            .accessibilityHidden(true)
            VStack(spacing: 60) {
                HomeScreenTopSectionView(TopMealImage: "bacon and Egg",Meal: "Test")
                //Spacer()
                   // .frame(height:50)
                ZStack{
                    BottomSection()
                    NavigationLink {
                        //where does it go
                        
                    } label: {
                        
                        Image("pasta")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                            .shadow(color: Color.black.opacity(0.2), radius:1, x:0,y:5)
                            .overlay(ZStack {
                                Text("nice")
                                    .font(.title2)
                                    .bold()
                                    .padding(6)
                                    .foregroundColor(.white)
                            }.background(Color.black)
                                        .cornerRadius(20.0)
                                        .padding(6.0)
                                     , alignment: .bottomLeading)
                    }
                }
                
            }
        }
        
    }
}

struct ChoosingScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChoosingScreen()
    }
}
