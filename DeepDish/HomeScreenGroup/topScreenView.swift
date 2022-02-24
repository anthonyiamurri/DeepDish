//
//  topScreenView.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/23/22.
//

import SwiftUI

struct topScreenView: View {
    var bottomLeft: CGFloat = 50
    private var numberOfImages: [String] = ["Lunch","pasta","pizza"]
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var currentIndex = 0

    var body: some View {
      //  GeometryReader{ proxy in
            TabView(selection: $currentIndex){
                ForEach(0..<numberOfImages.count){ num in
                    Image("\(self.numberOfImages[num])")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: 350, alignment: .center)
                        .cornerRadius(bottomLeft, corners: .bottomLeft)
                        .overlay(Color.black.opacity((0.4)))
                        .tag(num)
                }
                
            }.tabViewStyle(PageTabViewStyle())
                .cornerRadius(bottomLeft, corners: .bottomLeft)
                .onReceive(timer, perform: { _ in
                    withAnimation{
                        currentIndex = currentIndex < numberOfImages.count ? currentIndex + 1 : 0
                    }
                    
                })

       // }
        
//        Image("TopMealImage")
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .frame(width: UIScreen.main.bounds.width, height: 350, alignment: .center)
//            .cornerRadius(bottomLeft, corners: .bottomLeft)
//            .accessibilityHidden(true)
//            .overlay(ZStack {
//                Text("Meal")
//                    .font(.largeTitle)
//                    .bold()
//                    .padding(6)
//                    .foregroundColor(.white)
//                    .accessibilityHint("Meal of the day is breakfast")
//            }.background(Color.red)
//                        .cornerRadius(20.0)
//                        .padding(15.0)
//                     , alignment: .bottomLeading)
//            .edgesIgnoringSafeArea(.all)
//            .shadow(color: Color.black.opacity(0.6), radius:8, x:0,y:5)
    }
}

struct topScreenView_Previews: PreviewProvider {
    static var previews: some View {
        topScreenView()
    }
}
