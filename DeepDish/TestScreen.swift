//
//  TestScreen.swift
//  DeepDish
//
//  Created by Anthony Iamurri on 2/4/22.
//

import SwiftUI


//struct Categories: Identifiable{
//    let id = UUID()
//    var Text : String
//    var Image: String
//}
//var firstCategorie: Categories = Categories(Text: "first", Image: "first")
//var secondCategorie: Categories = Categories(Text: "first", Image: "first")
//
//
//let categoriesArray: [Categories] = [firstCategorie, secondCategorie]

struct TestScreen: View {
    var bottomLeft: CGFloat = 50
    var body: some View {
        VStack {
            Image("baconEgg")
                .resizable()
                .scaledToFit()
                .cornerRadius(bottomLeft, corners: .bottomLeft)
                .overlay(ZStack {
                    Text("Pasta")
                        .font(.callout)
                        .padding(6)
                        .foregroundColor(.white)
                }.background(Color.black)
                            .opacity(0.8)
                            .cornerRadius(10.0)
                            .padding(6.0)
                         , alignment: .bottomTrailing)
            Spacer()
        }
    }
    
}

struct TestScreen_Previews: PreviewProvider {
    static var previews: some View {
        TestScreen()
    }
}
