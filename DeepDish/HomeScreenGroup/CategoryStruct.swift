//
//  CategorieStruct.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/7/22.
//

import Foundation

//struct Row: Identifiable{
//    let id = UUID()
//    var categories: [Category]
//}
struct Category: Identifiable{
    let id = UUID()
        var Text : String
        var Image: String
        
        //class variables (defined at the entire structure)
        //singleton (static variables)
        static var firstCategorie: Category = Category(Text: "tacos", Image: "pasta")
        static var secondCategorie: Category = Category(Text: "tacos", Image: "pasta")
        static var thirdCategorie: Category = Category(Text: "tacos", Image: "pasta")
        static var fourthCategorie: Category = Category(Text: "tacos", Image: "pasta")
        static var fifthCategorie: Category = Category(Text: "tacos", Image: "pasta")
        static var sixthCategorie: Category = Category(Text: "tacos", Image: "pasta")
    
        
        static let TestData: [Category] = [firstCategorie,secondCategorie,thirdCategorie,fourthCategorie,fifthCategorie,sixthCategorie]
}

