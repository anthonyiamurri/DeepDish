//
//  ChoosingScreen.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/13/22.
//

import SwiftUI

struct ChoosingScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @GestureState private var dragOffset = CGSize.zero
    
    @State var meal: String
    @State var Category: Category
    var body: some View {
        ZStack {
            Image("backgroundPattern")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .accessibilityHidden(true)
            VStack(spacing: 60) {
                HomeScreenTopSectionView(TopMealImage: Category.Image ,Meal: Category.Text)
                //Spacer()
                // .frame(height:50)
                ZStack{
                    BottomSection()
                    HStack {
                        NavigationLink {
                            //where does it go
                            IngredientScreenView(meal: Category.Text, Category: Category)
                            
                        } label: {
                            
                            Image(Category.Image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                                .shadow(color: Color.black.opacity(0.2), radius:1, x:0,y:5)
                                .overlay(ZStack {
                                    Text("Ingredient")
                                        .font(.title2)
                                        .bold()
                                        .padding(6)
                                        .foregroundColor(.white)
                                }.background(Color.red)
                                            .cornerRadius(20.0)
                                            .padding(6.0)
                                         , alignment: .bottomLeading)
                        }
                        NavigationLink {
                            //where does it go
                            
                        } label: {
                            Image(Category.Image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                                .shadow(color: Color.black.opacity(0.2), radius:1, x:0,y:5)
                                .overlay(ZStack {
                                    Text("Recipe")
                                        .font(.title2)
                                        .bold()
                                        .padding(6)
                                        .foregroundColor(.white)
                                }.background(Color.red)
                                            .cornerRadius(20.0)
                                            .padding(6.0)
                                         , alignment: .bottomLeading)
                        }
                    }
                }
                
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action : {
                self.mode.wrappedValue.dismiss()
            }){
                Text("\(Image(systemName: "chevron.backward")) Back")
                    .font(.title2)
                    .padding(6)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(20.0)
                    .padding(6.0)
                
            })
            .edgesIgnoringSafeArea(.top)
                    .gesture(DragGesture().updating($dragOffset, body: { (value, state, transaction) in
                    
                        if(value.startLocation.x < 20 && value.translation.width > 100) {
                            self.mode.wrappedValue.dismiss()
                        }
                        
                    }))
        }
        
    }
}

struct ChoosingScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChoosingScreen(meal: "Test", Category: Category(Text: "tacos", Image: "pasta", Meal: tacos))
    }
}
