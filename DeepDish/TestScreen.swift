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
    
    var body: some View {
        
        VStack {
            Rectangle()
                .frame(height:300)
                .foregroundColor(.blue)
            
            Spacer().frame(height:60)
            ScrollView{
                VStack{
                    ForEach(0..<50){ index in
                        Rectangle()
                            .frame(height:300)
                    }
                }
            }
        }
        
    }
}

struct TestScreen_Previews: PreviewProvider {
    static var previews: some View {
        TestScreen()
    }
}
