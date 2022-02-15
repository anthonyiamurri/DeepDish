//
//  DeepDishApp.swift
//  DeepDish
//
//  Created by Anthony Iamurri on 2/2/22.
//

import SwiftUI

@main
struct DeepDishApp: App {
    @State private var currentScreen = AppScreens.homePage
    var body: some Scene {
        WindowGroup {
            if currentScreen == .homePage{
                HomeScreenView()
            }
        }
        
    }
}


enum AppScreens {
    case homePage
    case ingredientPage
}
