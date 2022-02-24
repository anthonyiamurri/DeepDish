//
//  TestScreen.swift
//  DeepDish
//
//  Created by Anthony Iamurri on 2/4/22.
//

import SwiftUI

struct TestScreen: View {
    var bottomLeft: CGFloat = 50
    private var numberOfImages: [String] = ["Lunch","pasta","pizza"]
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var currentIndex = 0
    var body: some View {
        GeometryReader{ proxy in
            TabView(selection: $currentIndex){
                ForEach(0..<numberOfImages.count){ num in
                    Image("\(self.numberOfImages[num])")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .overlay(Color.black.opacity((0.4)))
                        .tag(num)
                }
                
            }.tabViewStyle(PageTabViewStyle())
                .cornerRadius(bottomLeft, corners: .bottomLeft)
                .padding()
                .frame(width: proxy.size.width, height: proxy.size.height/3)
                .onReceive(timer, perform: { _ in
                    withAnimation{
                        currentIndex = currentIndex < numberOfImages.count ? currentIndex + 1 : 0
                    }
                    
                })
        }
    }
}

struct TestScreen_Previews: PreviewProvider {
    static var previews: some View {
        TestScreen()
            .preferredColorScheme(.dark)
    }
}
