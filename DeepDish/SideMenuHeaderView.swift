//
//  SideMenuHeaderView.swift
//  Side_Menu
//
//  Created by Jasmine Tetusch on 2/3/22.
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
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.white)//won't see it because of this
                    .padding()
            })
            
            
            VStack(alignment: .leading) {
                /*Image("cat in a bag")
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)*/
                
                Text("Menu")
                    .font(.title)
                    .fontWeight(.bold)
                    /*.font(.system(size: 24, weight: .bold))*/
                
                /*Text("@pope")
                    .font(.system(size: 14))
                    .padding(.bottom, 20)*/
                
                HStack(spacing: 12){
                    HStack(spacing: 4){
                        /*Text("1")
                            .bold()
                        Text("Following")*/
                    }
                    HStack(spacing: 4){
                        /*Text("1.4m")
                            .bold()
                        Text("Followers")*/
                    }
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
