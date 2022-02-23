//
//  SpeechView.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/22/22.
//

import AVFoundation
import SwiftUI
import Speech
//private let speechRecognizer = SFSpeechRecognizer()
struct SpeechView : View {
    @StateObject var speechRecognizer =
    SpeechRecognizer() // StateObject and not Observed object because there's only one source of truth, so you'll only have one source of truth for the whole app
    @State private var isRecording = false
    private var player: AVPlayer { AVPlayer.sharedDingPlayer }
    
    var body : some View {
        NavigationView{
            
            ZStack {
                Color("BrandColor")
                VStack{
                    VStack{
                        Text("I can’t hear you clearly.  I use this tool to understand what people are saying. Please speak into the mic")
                            .font(Font.custom("Avenir", size: 24))
                            .padding(.top, 20)
                            .padding([.leading, .trailing], 30.0)
                        //.foregroundColor(Color (hex: 0xB2CCDE))
                            .frame(maxHeight: .infinity)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    
                    Button(action: {
                        Task
                        {
                            isRecording.toggle()
                            if isRecording{
                                simpleEndHaptic()
                                player.seek(to: .zero)
                                player.play()
                                speechRecognizer.reset()
                                speechRecognizer.transcribe()
                                print(speechRecognizer.transcript)
                            }
                            else{
                                simpleSuccessHaptic()
                                speechRecognizer.stopTranscribing()
                                print(speechRecognizer.transcript)
                            }
                        }})
                    {
                        if !isRecording{
                            ZStack{
                                Image(systemName: "mic.circle").resizable().scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.white)
                                    .accessibilityHidden(true)
                                
                                Image(systemName: "record.circle.fill").resizable().scaledToFit()
                                    .frame(width: 132, height: 132)
                                    .foregroundColor(.white)
                                    .accessibilityLabel("Start Transcribing")
                                
                            }.shadow(color: .black, radius: 5, x: 0, y: 4)
                            
                        }
                        else
                        {
                            Image(systemName: "stop.circle.fill").resizable().scaledToFit()
                                .frame(width: 132, height: 132)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 5, x: 0, y: 4)
                                .accessibilityLabel("Stop Transcribing")
                        }
                    }
                    TextEditor(
                        text: $speechRecognizer.transcript
                    ).accessibilityHint("This field populates in real time when the voice is being recorded")
                        .font(.custom("Avenir", size: 16))
                        .cornerRadius(10)
                        .padding(.init(top: 12, leading: 25, bottom: 10, trailing: 25))
                }
            }
//            .navigationTitle("Speech").navigationBarTitleDisplayMode(.inline).navigationBarTitleTextColor(Color("BrandColor")).toolbar{
//                ToolbarItem(placement: .navigationBarTrailing){
//                    NavigationLink(
//                        destination: TestScreen()
//                    ) {
//                        Image(systemName: "gear")
//                            .foregroundColor(.blue)
//                    }
//
//                }
//            }
        }// clsoing bracket for navigation view
        //.onAppear(perform: UIApplication.shared.addTapGestureRecognizer)
    }
    //closing bracket for vard body some view
    func speechRecognizer(_ speechRecognizer: SFSpeechRecognizer, availabilityDidChange available: Bool) {
        if available {
            print("Available")
        } else {
            print("Available")
        }
    }
}
struct SpeechView_Previews : PreviewProvider {
    static var previews: some View {
        SpeechView()
    }
}

func simpleSuccessHaptic() {
    let generator = UINotificationFeedbackGenerator()
    generator.notificationOccurred(.success)
}

func simpleEndHaptic() {
    let generator = UINotificationFeedbackGenerator()
    generator.notificationOccurred(.warning)
}

func simpleBigHaptic() {
    let generator = UINotificationFeedbackGenerator()
    generator.notificationOccurred(.error)
}
