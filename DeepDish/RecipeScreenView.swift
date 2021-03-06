//
//  RecipeScreenView.swift
//  DeepDish
//
//  Created by Anthony Iamurri on 2/15/22.
//

import SwiftUI

struct RecipeScreenView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @GestureState private var dragOffset = CGSize.zero
    
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
                        .overlay(recipeList)
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
    
    
    var recipeList: some View{
        VStack(spacing:20) {
            Text("Recipe")
                .underline(color: .red)
                .font(.largeTitle)
                .bold()
                .padding(6)
                .foregroundColor(Color("darktext"))
            HStack {
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    VStack(alignment: .leading)  {
                        ForEach(Category.Meal.recipie, id: \.self){recipie in
                            let index = Category.Meal.recipie.index(of: recipie)! + 1
                            
                            Label{
                                Text("\(index). \(recipie)")
                                    .accessibilityLabel("Step \(index), \(recipie)")
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


struct RecipeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeScreenView( Category: Category(Text: "tacos", Image: "pasta", Meal: tacos))
    }
}
