//
//  CategorieStruct.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/7/22.
//

import Foundation

/* This holds day for the meal recipie and ingredient*/
struct Meal{
    var ingredient: [String]
    var recipie: [String]
    

}
var tacos: Meal = Meal(ingredient: ["Tacos ipsum dolor sit","Tacos ipsum dolor sit","Tacos ipsum dolor sit","Tacos ipsum dolor sit","Tacos ipsum dolor sit","Tacos ipsum dolor sit","Tacos ipsum dolor sit"], recipie: ["Lorem ipsum dolor sit","Lorem ipsum dolor sit","Lorem ipsum dolor sit","Lorem ipsum dolor sit","Lorem ipsum dolor sit","Lorem ipsum dolor sit","Lorem ipsum dolor sit"])
var pizza: Meal = Meal(ingredient: ["Pizza ipsum dolor sit","Pizza ipsum dolor sit","Pizza ipsum dolor sit","Pizza ipsum dolor sit","Pizza ipsum dolor sit","Pizza ipsum dolor sit","Pizza ipsum dolor sit"], recipie: ["Lorem ipsum dolor sit","Lorem ipsum dolor sit","Lorem ipsum dolor sit","Lorem ipsum dolor sit","Lorem ipsum dolor sit","Lorem ipsum dolor sit","Lorem ipsum dolor sit"])


/* This holds all tge category data*/
struct Category: Identifiable{
    let id = UUID()
    var Text : String
    var Image: String
    var Meal: Meal


    static var firstCategorie: Category = Category(Text: "tacos", Image: "pasta", Meal: tacos)
    static var secondCategorie: Category = Category(Text: "pizza", Image: "pasta", Meal: pizza)
    static var thirdCategorie: Category = Category(Text: "tacos", Image: "pasta", Meal: tacos)
    static var fourthCategorie: Category = Category(Text: "pizza", Image: "pasta", Meal: pizza)
    static var fifthCategorie: Category = Category(Text: "tacos", Image: "pasta", Meal: tacos)
    static var sixthCategorie: Category = Category(Text: "pizza", Image: "pasta",Meal: pizza)

    static let TestData: [Category] = [firstCategorie,secondCategorie,thirdCategorie,fourthCategorie,fifthCategorie,sixthCategorie]
}

