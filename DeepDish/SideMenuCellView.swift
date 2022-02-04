//
//  SideMenuCellView.swift
//  Side_Menu
//
//  Created by Jasmine Tetusch on 2/3/22.
//

import SwiftUI

struct SideMenuCellView: View {
    
    let viewModel: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: viewModel.imageName)
                .frame(width: 24, height: 24)
                .font(.system(size: 32))
            
            Text(viewModel.title)
                .font(.system(size: 30, weight: .semibold))
            
            Spacer()
        }
        .foregroundColor(.white)
        //You won't see it on this screen because the foreground color is white
        .padding()
    }
}

struct SideMenuCellView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuCellView(viewModel: .voicecontrol)
    }
}
