//
//  CategorieStruct.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/7/22.
//

import Foundation

//struct Row: Identifiable{
//    let id = UUID()
//    var categories: [Categorie]
//}
struct Categorie: Identifiable {
    // instance variables (fields)
    let id = UUID()
    var Text : String
    var Image: String
    
    //class variables (defined at the entire structure)
    //singleton (static variables)
    static var firstCategorie: Categorie = Categorie(Text: "first", Image: "pasta")
    static var secondCategorie: Categorie = Categorie(Text: "second", Image: "pasta")
    static var thirdCategorie: Categorie = Categorie(Text: "third", Image: "pasta")
    
    static let TestData: [Categorie] = [firstCategorie,secondCategorie,thirdCategorie]

//    static let categoriesRow1 = Row(categories: [firstCategorie,secondCategorie])
//    static let categoriesRow2 = Row(categories: [firstCategorie,secondCategorie])
//    static let categoriesRow3 = Row(categories: [firstCategorie,secondCategorie])
//    static let categoriesRow4 = Row(categories: [firstCategorie,secondCategorie])
//    static let categoriesRow5 = Row(categories: [firstCategorie,secondCategorie])
//    static let categoriesRow6 = Row(categories: [firstCategorie,secondCategorie])

//    static let TestData: [Row] = [categoriesRow1,categoriesRow2,categoriesRow3,categoriesRow4,categoriesRow5,categoriesRow6]
}


