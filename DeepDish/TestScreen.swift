//
//  TestScreen.swift
//  DeepDish
//
//  Created by Anthony Iamurri on 2/4/22.
//

import SwiftUI
    
struct TestScreen: View {
    @StateObject var speechRecognizer = SpeechRecognizer()
    var bottomLeft: CGFloat = 50
    var body: some View {
        VStack{
            Text("yes")
            
        }
    }
}

struct TestScreen_Previews: PreviewProvider {
    static var previews: some View {
        TestScreen()
    }
}
