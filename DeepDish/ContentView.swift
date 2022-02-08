//
//  ContentView.swift
//  DeepDish
//
//  Created by Anthony Iamurri on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowing = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
                
                HomeView()
                    .cornerRadius(isShowing ? 10 : 10)
                    .offset(x: isShowing ? 300 : 0, y: isShowing ? 0 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1.10)
                    .navigationBarItems(trailing: Button(action: {
                        withAnimation(.spring()) {
                            isShowing.toggle()
                        }
                    }, label: {
                        Image(systemName: "house.circle")
                            .foregroundColor(.black)
                            .font(.system(size: 40))
                    }))
                //The button is part of the home view (main screen), and this navigation bar item is made as a button to unlock the menu
                    /*.navigationTitle("Menu")
                    .navigationBarTitleDisplayMode(.inline)*/
                    //The navigation bar title display mode (inline) aligns it at the top and shrinks the text size
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
           // Color(.orange)
      Image("Background")
                .resizable()
                .scaledToFit()
            //Background was only changed to test shadows for the 'Breakfast' text
            
            Text("BREAKFAST")
                .foregroundColor(Color.white)
            
                .shadow(color: .black, radius: 0.2, x: 1.2, y: 1.8)
                .padding()
        }
    }
}
