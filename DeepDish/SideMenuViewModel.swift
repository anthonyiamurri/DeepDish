//
//  SideMenuViewModel.swift
//  Side_Menu
//
//  Created by Jasmine Tetusch on 2/3/22.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case voicecontrol
    case favorites
    case settings
    
    
    var title: String {
        switch self {
            case .voicecontrol: return "Voice Control"
            case .favorites: return "Favorites"
            case .settings: return "Settings"
        }
    }
    
    var imageName: String {
        switch self {
            case .voicecontrol: return "mic.fill"
            case .favorites: return "bookmark"
            case .settings: return "gear"
        }
    }
}
