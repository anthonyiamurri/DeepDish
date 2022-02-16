//
//  SideMenuHeaderView.swift
//  Side_Menu
//
//  Created by Jasmine Teutsch on 2/3/22.
//

import SwiftUI

struct SideMenuHeaderView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            
            Button(action: {
                withAnimation(.spring()) {
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "")
                    .accessibilityHidden(true)
                    .frame(width: 32, height: 32)
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.white)//won't see it because of this
                    .padding()
            })
            
            
            VStack(alignment: .leading) {
                
                Text("Menu")
                    .fontWeight(.bold)
                    .accessibilityHidden(true)
                    .font(.title)
                    /*.font(.system(size: 24, weight: .bold))*/
                
                HStack(spacing: 12){
                    HStack(spacing: 4){}
                    HStack(spacing: 4){}
                    Spacer()
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
