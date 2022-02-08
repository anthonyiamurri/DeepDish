//
//  CategorieStruct.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/7/22.
//

import Foundation

struct Row: Identifiable{
    let id = UUID()
    var categories: [Categorie]
}
struct Categorie: Identifiable{
    let id = UUID()
    var Text : String
    var Image: String
}
var firstCategorie: Categorie = Categorie(Text: "first", Image: "pasta")
var secondCategorie: Categorie = Categorie(Text: "first", Image: "pasta")

let categoriesRow1 = Row(categories: [firstCategorie,secondCategorie])
let categoriesRow2 = Row(categories: [firstCategorie,secondCategorie])
let categoriesRow3 = Row(categories: [firstCategorie,secondCategorie])
let categoriesRow4 = Row(categories: [firstCategorie,secondCategorie])
let categoriesRow5 = Row(categories: [firstCategorie,secondCategorie])
let categoriesRow6 = Row(categories: [firstCategorie,secondCategorie])

let Rows: [Row] = [categoriesRow1,categoriesRow2,categoriesRow3,categoriesRow4,categoriesRow5,categoriesRow6]
