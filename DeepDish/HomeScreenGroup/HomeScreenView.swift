//
//  ContentView.swift
//  DeepDish
//
//  Created by Anthony Iamurri on 2/2/22.
//

import SwiftUI





struct HomeScreenView: View {
    var topLeft: CGFloat = 50
    var topRight: CGFloat = 50
    var bottomLeft: CGFloat = 50
    var bottomRight: CGFloat = 0
    
    var body: some View {
        
        ZStack {
            Image("backgroundPattern")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack() {
                HomeScreenTopSectionView()
                Spacer()
                    .frame(height:100)
                ZStack{
                    ButtomSection()
                    HomeScreenButtomSectionView()
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


