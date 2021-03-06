//
//  IngredientScreenView.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/8/22.
//

import SwiftUI

struct IngredientScreenView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @GestureState private var dragOffset = CGSize.zero
    
   //@State var meal: String
    @State var Category: Category
    var body: some View {
        ZStack {
            Image("backgroundPattern")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .accessibilityHidden(true)
            VStack(spacing: 60){
                HomeScreenTopSectionView(TopMealImage: Category.Image, Meal: Category.Text)
                ZStack {
                    BottomSection()
                        .overlay(ingredientList)
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
    
    
    var ingredientList: some View{
        VStack(spacing:20) {
            Text("Ingredients")
                .underline(color: .red)
                .font(.largeTitle)
                .bold()
                .padding(6)
                .foregroundColor(Color("darktext"))
            HStack {
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    VStack(alignment: .leading)  {
                        ForEach(Category.Meal.ingredient, id: \.self){ingredient in
                            
                            Label{
                                Text("\(ingredient)")
                            } icon:{
                                Image("appIcon")
                                    .resizable()
                                    .frame(width: 50.0, height: 50.0)
                            }
                            .font(.title)
                            .padding()
                            .foregroundColor(Color("darktext"))
                            
                        }
                        Spacer ()
                        
                    }
                })
                
                Spacer ()
                
                
            }
        }
    }

}


struct IngredientScreenView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientScreenView( Category: Category(Text: "tacos", Image: "pasta", Meal: tacos))
    }
}
