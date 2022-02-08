//
//  ContentView.swift
//  DeepDish
//
//  Created by Anthony Iamurri on 2/2/22.
//

import SwiftUI

struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}


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
                    Rectangle()
                        .frame(height: 450)
                        .edgesIgnoringSafeArea(.all)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .cornerRadius(topLeft, corners: .topLeft)
                        .shadow(color: Color.black.opacity(0.9), radius:30, x:0,y:-10)
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


