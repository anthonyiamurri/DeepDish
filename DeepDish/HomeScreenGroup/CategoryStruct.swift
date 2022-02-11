//
//  CategorieStruct.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/7/22.
//

import Foundation

struct Row: Identifiable{
    let id = UUID()
    var categories: [Category]
}
struct Category: Identifiable{
    let id = UUID()
    var Text : String
    var Image: String
    
    static var firstCategory: Category = Category(Text: "pizza", Image: "pasta")
    static var secondCategory: Category = Category(Text: "tacos", Image: "pasta")

    static let categoryRow1 = Row(categories: [firstCategory,secondCategory])
    static let categoryRow2 = Row(categories: [firstCategory,secondCategory])
    static let categoryRow3 = Row(categories: [firstCategory,secondCategory])
    static let categoryRow4 = Row(categories: [firstCategory,secondCategory])
    static let categoryRow5 = Row(categories: [firstCategory,secondCategory])
    static let categoryRow6 = Row(categories: [firstCategory,secondCategory])

    static let TestData: [Row] = [categoryRow1,categoryRow2,categoryRow3,categoryRow4,categoryRow5,categoryRow6]
}


