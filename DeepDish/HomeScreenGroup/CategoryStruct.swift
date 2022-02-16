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
var tacos: Meal = Meal(ingredient: ["Tacos1","Tacos 2","Tacos3t","Tacos4","Tacos5","Tacos6","Tacos 7"], recipie: ["Put a pan on medium heat","Add some cooking oil","Lorem2","Lorem 3","Lorem 4","Lorem 5t","Lorem6"])
var pizza: Meal = Meal(ingredient: ["Pizza1","Pizza 1","Pizza2","Pizza3","Pizza4","Pizza5"], recipie: ["Lorem1","Lorem2","Lorem3","Lorem 4","Lorem5","Lorem 6","Lorem7"])


/* This holds all tge category data*/
struct Category: Identifiable{
    let id = UUID()
    var Text : String
    var Image: String
    var Meal: Meal


    static var firstCategorie: Category = Category(Text: "Pasta", Image: "pasta", Meal: tacos)
    static var secondCategorie: Category = Category(Text: "Pizza", Image: "pizza", Meal: pizza)
    static var thirdCategorie: Category = Category(Text: "Fruit", Image: "Smoothie", Meal: tacos)
    static var fourthCategorie: Category = Category(Text: "Vegan", Image: "Vegan3", Meal: pizza)
    static var fifthCategorie: Category = Category(Text: "Lunch", Image: "Lunch", Meal: tacos)
    static var sixthCategorie: Category = Category(Text: "Pastries", Image: "Pastry",Meal: pizza)

    static let TestData: [Category] = [firstCategorie,secondCategorie,thirdCategorie,fourthCategorie,fifthCategorie,sixthCategorie]
}

