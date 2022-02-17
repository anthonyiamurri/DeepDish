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
var tacos: Meal = Meal(ingredient: ["1 cup potato starch","¼ teaspoon kosher salt","1 teaspoon vegetable oil","¾ cup of boiling water","2 tablespoons oyster sauce","2 tablespoons soy sauce","2 tablespoons rice vinegar", "4 teaspoons ketchup", "¼ teaspoon sesame oil", "1 teaspoon white sugar", "1 tablespoon Sriracha sauce", "1 tablespoon vegetable oil", "6 cloves garlic, minced", "1 teaspoon red pepper flakes, or to taste", "¼ cup thinly sliced green onions", "¼ cup chopped fresh cilantro, or to taste"], recipie: ["Combine 1 cup potato starch, salt, and vegetable oil in a bowl. Add a splash of boiling water at a time, stirring between additions, until you get a perfectly textured dough.","Transfer to a work surface dusted with a little potato starch. Working quickly while the dough is still warm, knead, adding more potato starch if necessary, until smooth and elastic.","Bring a large pot of lightly salted water to a boil. Set out a large bowl of cold water.","While the water is boiling, roll dough to a thickness of 1/8 inch. Cut into 1/4-inch noodles with a pizza cutter. Separate noodles.","Add potato noodles (in batches if desired) and cook until they float, about 1 minute. Transfer to the bowl of cold water. Repeat to cook remaining noodles.","Whisk oyster sauce, soy sauce, rice vinegar, ketchup, sesame oil, sugar, and Sriracha together in a bowl.","Heat vegetable oil in a skillet over medium-high heat. Add garlic and sizzle for 15 seconds. Add 1 teaspoon red pepper flakes and green onions; stir-fry for a just few seconds. Before the garlic starts to brown, add in the potato noodles. It's okay that some water comes into the pan as it will stop the cooking process and prevent the garlic from burning.","Add sauce and stir until noodles are coated. Cook until noodles are heated through and sauce starts to simmer, 1 to 2 minutes. Turn off the heat and stir in 1/4 cup chopped cilantro.", "Divide noodles into 2 bowls and garnish with more cilantro and red pepper flakes."])
var fruit: Meal = Meal(ingredient: ["2 cups of frozen fruit","1 cup of fresh fruit","½ cup of milk","¼ cup yogurt","1-2 tablespoons of sweetener", "Optional: several icecubes"], recipie: ["Pour milk, yogurt, fruit and sweetener into blender","Pulse several times to help crush frozen ingredients", "Continue blending until smooth"])
var pizza: Meal = Meal(ingredient: ["1 cup potato starch","¼ teaspoon kosher salt","1 teaspoon vegetable oil","¾ cup of boiling water","2 tablespoons oyster sauce","2 tablespoons soy sauce","2 tablespoons rice vinegar", "4 teaspoons ketchup", "¼ teaspoon sesame oil", "1 teaspoon white sugar", "1 tablespoon Sriracha sauce", "1 tablespoon vegetable oil", "6 cloves garlic, minced", "1 teaspoon red pepper flakes, or to taste", "¼ cup thinly sliced green onions", "¼ cup chopped fresh cilantro, or to taste"], recipie: ["Combine 1 cup potato starch, salt, and vegetable oil in a bowl. Add a splash of boiling water at a time, stirring between additions, until you get a perfectly textured dough.","Transfer to a work surface dusted with a little potato starch. Working quickly while the dough is still warm, knead, adding more potato starch if necessary, until smooth and elastic.","Bring a large pot of lightly salted water to a boil. Set out a large bowl of cold water.","While the water is boiling, roll dough to a thickness of 1/8 inch. Cut into 1/4-inch noodles with a pizza cutter. Separate noodles.","Add potato noodles (in batches if desired) and cook until they float, about 1 minute. Transfer to the bowl of cold water. Repeat to cook remaining noodles.","Whisk oyster sauce, soy sauce, rice vinegar, ketchup, sesame oil, sugar, and Sriracha together in a bowl.","Heat vegetable oil in a skillet over medium-high heat. Add garlic and sizzle for 15 seconds. Add 1 teaspoon red pepper flakes and green onions; stir-fry for a just few seconds. Before the garlic starts to brown, add in the potato noodles. It's okay that some water comes into the pan as it will stop the cooking process and prevent the garlic from burning.","Add sauce and stir until noodles are coated. Cook until noodles are heated through and sauce starts to simmer, 1 to 2 minutes. Turn off the heat and stir in 1/4 cup chopped cilantro.", "Divide noodles into 2 bowls and garnish with more cilantro and red pepper flakes."])


/* This holds all tge category data*/
struct Category: Identifiable{
    let id = UUID()
    var Text : String
    var Image: String
    var Meal: Meal


    static var firstCategorie: Category = Category(Text: "Pasta", Image: "pasta", Meal: tacos)
    static var secondCategorie: Category = Category(Text: "Pizza", Image: "pizza", Meal: pizza)
    static var thirdCategorie: Category = Category(Text: "Fruit", Image: "Smoothie", Meal: fruit)
    static var fourthCategorie: Category = Category(Text: "Vegan", Image: "Vegan3", Meal: pizza)
    static var fifthCategorie: Category = Category(Text: "Lunch", Image: "Lunch", Meal: tacos)
    static var sixthCategorie: Category = Category(Text: "Pastries", Image: "Pastry",Meal: pizza)

    static let TestData: [Category] = [firstCategorie,secondCategorie,thirdCategorie,fourthCategorie,fifthCategorie,sixthCategorie]
}

