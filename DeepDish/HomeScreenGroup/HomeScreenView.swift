//
//  ContentView.swift
//  DeepDish
//
//  Created by Anthony Iamurri on 2/2/22.
//

import SwiftUI





struct HomeScreenView: View {
    
    @State private var selection = 0
    //For Rabview
    
    init() {
        UITabBar.appearance().isTranslucent = true //changing to true stopped gray bar at bottom
        UITabBar.appearance().unselectedItemTintColor = UIColor.red
     }
    
    var body: some View {
        
        
        TabView(selection: $selection) {
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
            .tabItem {
                Label("Home", systemImage: "house")
            }
            .tag(0)
            
            //Other TabItem
            ZStack {
                Color.red
                Text("Favorites Screen")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            }
            .edgesIgnoringSafeArea(.all)
                .tabItem {
                    Label("Favorites", systemImage: "bookmark")
                }
                .tag(1)
            
            ZStack {
                Color.red
                Text("Settings Screen")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            }
            .edgesIgnoringSafeArea(.all)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(2)

        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()

    }
}


