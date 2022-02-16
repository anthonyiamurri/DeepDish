//
//  SideMenuView.swift
//  Side_Menu
//
//  Created by Jasmine Teutsch on 2/3/22.
//

import SwiftUI

struct CustomColor {
    static let darkRed = Color("darkred")
}

struct SideMenuView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [CustomColor.darkRed, Color.red]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            
            VStack {
                //Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .foregroundColor(.white)
                    .frame(height: 240)
                
                //Cell Items
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink(
                        destination: Text(option.title),
                        label: {
                            SideMenuCellView(viewModel: option)
                        })
                }
                
                Spacer()
            }
            
            
        }
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
