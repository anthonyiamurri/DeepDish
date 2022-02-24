//
//  ContentView.swift
//  DeepDish
//
//  Created by Anthony Iamurri on 2/2/22.
//

import SwiftUI





struct HomeScreenView: View {
    var bottomLeft: CGFloat = 50
    private var numberOfImages: [String] = ["Lunch","pasta","pizza","Smoothie","Vegan3","Pastry"]
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var currentIndex = 0
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
                    
                    VStack(spacing: 20) {
//                        HomeScreenTopSectionView(TopMealImage: "bacon and Egg", Meal: "Breakfast")
                        lilView
                            .frame(height: 340)
                            .edgesIgnoringSafeArea(.all)
                            .ignoresSafeArea( edges: .top)
                            .accessibilityHidden(true)
                        ZStack{
                            BottomSection()
                                .navigationBarHidden(true)
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
    
    var lilView: some View {
        
        GeometryReader{ proxy in
            TabView(selection: $currentIndex){
                ForEach(0..<numberOfImages.count){ num in
                    Image("\(self.numberOfImages[num])")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .overlay(Color.black.opacity((0.2)))
                        .tag(num)
                }
                
            }.tabViewStyle(PageTabViewStyle())
                .cornerRadius(bottomLeft, corners: .bottomLeft)
                .shadow(color: Color.black.opacity(0.6), radius:8, x:0,y:5)
                //.clipShape(RoundedRectangle(cornerRadius: 30))
                .onReceive(timer, perform: { _ in
                    withAnimation{
                        currentIndex = currentIndex < numberOfImages.count ? currentIndex + 1 : 0
                    }
                    
                })
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
        
    }
}


