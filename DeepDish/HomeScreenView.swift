//
//  ContentView.swift
//  DeepDish
//
//  Created by Anthony Iamurri on 2/2/22.
//

import SwiftUI

struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}


struct Row: Identifiable{
    let id = UUID()
    var categories: [Categorie]
}
struct Categorie: Identifiable{
    let id = UUID()
    var Text : String
    var Image: String
}
var firstCategorie: Categorie = Categorie(Text: "first", Image: "first")
var secondCategorie: Categorie = Categorie(Text: "first", Image: "first")

let categoriesRow1 = Row(categories: [firstCategorie,secondCategorie])
let categoriesRow2 = Row(categories: [firstCategorie,secondCategorie])

let categoriesArray: [Row] = [categoriesRow1,categoriesRow2]


struct HomeScreenView: View {
    var topLeft: CGFloat = 50
    var topRight: CGFloat = 50
    var bottomLeft: CGFloat = 50
    var bottomRight: CGFloat = 0
    var body: some View {
        
        ZStack {
            Image("backgroundPattern")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack() {
                ZStack {
                    Image("asparagus")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: 300, alignment: .center)
                        .cornerRadius(bottomLeft, corners: .bottomLeft)
                        .edgesIgnoringSafeArea(.all)
                        .shadow(color: Color.black.opacity(0.9), radius: 200)
                    
                    VStack {
                        Spacer()
                        HStack {
                            Text("Breakfast")
                                .font(.largeTitle)
                                .padding([.leading, .bottom])
                                .shadow(radius: 40)
                            Spacer()
                        }
                    }
                    
                }
                
                Spacer()
                    .frame(height:100)
                
                ZStack {
                    Rectangle()
                        .frame(height: 450)
                        .edgesIgnoringSafeArea(.all)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .cornerRadius(topLeft, corners: .topLeft)
                    
                    VStack {
                        ForEach(categoriesArray){ index in
                            //Spacer()
                            HStack{
                                ForEach(index.categories){ index in
                                    Spacer()
                                    RoundedRectangle(cornerRadius: 30).frame(width: 150, height: 150)
                                    Spacer()
                                }
                            }
                           // Spacer()
                            
                        }
                        
                    }
                }
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}


