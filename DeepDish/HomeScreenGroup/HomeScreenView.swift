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
       /* UITabBar.appearance().isTranslucent = false //changing to true stopped gray bar at bottom
        UITabBar.appearance().unselectedItemTintColor = UIColor.red
        UITabBar.appearance().barTintColor = UIColor.green*/
        let apparence = UITabBarAppearance()
                UITabBar.appearance().unselectedItemTintColor = UIColor.red
                apparence.configureWithOpaqueBackground()
                if #available(iOS 15.0, *) {UITabBar.appearance().scrollEdgeAppearance = apparence}
     }
    
    var body: some View {
        
        
        TabView(selection: $selection) {
            NavigationView {
                ZStack {
                    Image("backgroundPattern")
                        .resizable()
                        .edgesIgnoringSafeArea(.horizontal)
                        .edgesIgnoringSafeArea(.top)
                        .accessibilityHidden(true)
                    
                    VStack() {
                        HomeScreenTopSectionView(TopMealImage: "bacon and Egg", Meal: "Breakfast")
//                        Spacer()
                            .frame(height: 270)
                        ZStack{
                            BottomSection()
                            HomeScreenButtomSectionView()
                        }
                        
                    }
                }
            }
            .onAppear{ // this keeps the app on portrait mode
                UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
                AppDelegeate.orientationLock = .portrait
            }.onDisappear{
                AppDelegeate.orientationLock = .all
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
            .edgesIgnoringSafeArea(.horizontal)
            .edgesIgnoringSafeArea(.top)
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
            .edgesIgnoringSafeArea(.horizontal)
            .edgesIgnoringSafeArea(.top)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(2)

                }
                .accentColor(.red)
            }
        }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()

    }
}


