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
        VStack{
            NavigationLink("6",destination: IngredientScreenView())
            
        }
    }
}

struct TestScreen_Previews: PreviewProvider {
    static var previews: some View {
        TestScreen()
    }
}
