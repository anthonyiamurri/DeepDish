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
        }.onAppear{ // this keeps the app on portrait mode
            UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
            AppDelegeate.orientationLock = .portrait
        }.onDisappear{
            AppDelegeate.orientationLock = .all
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()

    }
}


