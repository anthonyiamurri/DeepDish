//
//  DeepDishApp.swift
//  DeepDish
//
//  Created by Anthony Iamurri on 2/2/22.
//

import SwiftUI

@main
struct DeepDishApp: App {
    @UIApplicationDelegateAdaptor(AppDelegeate.self) var appDelegeate // this keeps the app on portrait mode
    var body: some Scene {
        WindowGroup {
                HomeScreenView()
        }
        
    }
}

// this keeps the app on portrait mode
class AppDelegeate: NSObject, UIApplicationDelegate{
    static var orientationLock = UIInterfaceOrientationMask.all
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask{
        return AppDelegeate.orientationLock
    }
}
