//
//  ContentView.swift
//  DeepDish
//
//  Created by Anthony Iamurri on 2/2/22.
//

import SwiftUI





struct HomeScreenView: View {
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Image("backgroundPattern")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .accessibilityHidden(true)
                
                VStack() {
                    HomeScreenTopSectionView(TopMealImage: "baconEgg", Meal: "Breakfast")
                    //Spacer()
                       // .frame(height:50)
                    ZStack{
                        BottomSection()
                        HomeScreenButtomSectionView()
                    }
                    
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()

    }
}


