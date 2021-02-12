//
//  MenuView.swift
//  Popopopo
//
//  Created by Dara Vasconcelos on 11/02/21.
//

import SwiftUI
import AVFoundation

struct Menu: View {
    @Binding var showSombrinha:Bool
    @Binding var showLatinha :Bool
    @Binding var showOculos :Bool
    @Binding var showEstandarte:Bool
    @Binding var showOlhos:Bool
    @Binding var showBico:Bool
    @State var audioPlayer1: AVAudioPlayer!
    @State var audioPlayer2: AVAudioPlayer!
    @State var audioPlayer3: AVAudioPlayer!
    @State var audioPlayer4: AVAudioPlayer!
    @State var audioPlayer5: AVAudioPlayer!
    @State var audioPlayer6: AVAudioPlayer!
    
    
    

    var body: some View {
        VStack{
            ScrollView{
                Button(action: {
                    $showSombrinha.wrappedValue.toggle()
                    if showSombrinha == true {
                    playSound1("2.mp3")
                    audioPlayer1.numberOfLoops = -1
                    audioPlayer1.setVolume(1, fadeDuration: 0.3)
                    }
                    else {
                        audioPlayer1.stop()
                    }
                    
                }){
                    VStack(){
                        Image("Sombrinha")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                            .shadow(radius: self.showSombrinha ? 0 : 5)
                            .opacity(self.showSombrinha ? 0.5 : 1 )
                        Text("Sombrinha")
                            .font(Font.custom("Poppins-Regular", size: 12))
                            .foregroundColor(Color("darkColor"))
        
                    }
                }.padding([.top, .leading, .trailing])
           
                Button(action: {
                    $showLatinha.wrappedValue.toggle()
                    if showLatinha == true {
                    playSound2("3.mp3")
                    audioPlayer2.numberOfLoops = -1
                        audioPlayer2.setVolume(0.6, fadeDuration: 0.3)
                    }
                    else {
                        audioPlayer2.stop()
                    }

                }){
                    VStack(){
                        Image("Latinha")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                            .shadow(radius: self.showLatinha ? 0 : 5)
                            .opacity(self.showLatinha ? 0.5 : 1 )
                            .shadow(radius: 5)
                        Text("Latinha")
                            .font(Font.custom("Poppins-Regular", size: 12))
                            .foregroundColor(Color("darkColor"))
                    }
                }.padding([.top, .leading, .trailing])
                
                Button(action: {
                    $showOculos.wrappedValue.toggle()
                    if showOculos == true {
                    playSound3("1.mp3")
                    audioPlayer3.numberOfLoops = -1
                    audioPlayer3.setVolume(0.3, fadeDuration: 0.3)
                    }
                    else {
                        audioPlayer3.stop()
                    }
                    
                }){
                    VStack(){
                        Image("Oculos")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                            .shadow(radius: self.showOculos ? 0 : 5)
                            .opacity(self.showOculos ? 0.5 : 1 )
                        Text("Óculos")
                            .font(Font.custom("Poppins-Regular", size: 12))
                            .foregroundColor(Color("darkColor"))
                    }
                    
                    
                }.padding([.top, .leading, .trailing])
                
                
                Button(action: {
                    $showEstandarte.wrappedValue.toggle()
                    if showEstandarte == true {
                    playSound4("4.mp3")
                    audioPlayer4.numberOfLoops = -1
                    audioPlayer4.setVolume(0.3, fadeDuration: 0.3)
                    }
                    else {
                        audioPlayer4.stop()
                    }
                    
                }){
                    VStack(){
                        Image("Estandarte")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                            .shadow(radius: $showEstandarte.wrappedValue ? 0 : 5)
                            .opacity($showEstandarte.wrappedValue ? 0.5 : 1 )
                        Text("Estandarte")
                            .font(Font.custom("Poppins-Regular", size: 12))
                            .foregroundColor(Color("darkColor"))
                    }
                    
                    
                }.padding([.top, .leading, .trailing])
                
                
                Button(action: {
                    $showOlhos.wrappedValue.toggle()
                    if showOlhos == true {
                    playSound5("5.mp3")
                    audioPlayer5.numberOfLoops = -1
                    audioPlayer5.setVolume(0.4, fadeDuration: 0.3)
                    }
                    else {
                        audioPlayer5.stop()
                    }
                    
                }){
                    VStack(){
                        Image("Olhos")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                            .shadow(radius: $showOlhos.wrappedValue ? 0 : 5)
                            .opacity($showOlhos.wrappedValue ? 0.5 : 1 )
                        Text("Olhos")
                            .font(Font.custom("Poppins-Regular", size: 12))
                            .foregroundColor(Color("darkColor"))
                    }
                    
                    
                }.padding([.top, .leading, .trailing])
                
                
                Button(action: {
                    $showBico.wrappedValue.toggle()
                    if showBico == true {
                    playSound6("6.mp3")
                    audioPlayer6.numberOfLoops = -1
                    audioPlayer6.setVolume(0.9, fadeDuration: 0.3)
                    }
                    else {
                        audioPlayer6.stop()
                    }

                }){
                    VStack(){
                        Image("Bico")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                            .shadow(radius: $showBico.wrappedValue ? 0 : 5)
                            .opacity($showBico.wrappedValue ? 0.5 : 1 )
                        Text("Bico")
                            .font(Font.custom("Poppins-Regular", size: 12))
                            .foregroundColor(Color("darkColor"))
                    }
                    
                    
                }.padding([.top, .leading, .trailing])
               // Spacer()
            }
         
        }.background(Color("lightColor"))
        .cornerRadius(5)
    
   
    }


func playSound1(_ soundFileName : String) {
    guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: nil) else {
        fatalError("Unable to find \(soundFileName) in bundle")
    }

    do {
        audioPlayer1 = try AVAudioPlayer(contentsOf: soundURL)
    } catch {
        print(error.localizedDescription)
    }
    audioPlayer1.play()
}

func playSound2(_ soundFileName : String) {
    guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: nil) else {
        fatalError("Unable to find \(soundFileName) in bundle")
    }

    do {
        audioPlayer2 = try AVAudioPlayer(contentsOf: soundURL)
    } catch {
        print(error.localizedDescription)
    }
    audioPlayer2.play()
}

func playSound6(_ soundFileName : String) {
    guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: nil) else {
        fatalError("Unable to find \(soundFileName) in bundle")
    }

    do {
        audioPlayer6 = try AVAudioPlayer(contentsOf: soundURL)
    } catch {
        print(error.localizedDescription)
    }
    audioPlayer6.play()
}

func playSound3(_ soundFileName : String) {
    guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: nil) else {
        fatalError("Unable to find \(soundFileName) in bundle")
    }

    do {
        audioPlayer3 = try AVAudioPlayer(contentsOf: soundURL)
    } catch {
        print(error.localizedDescription)
    }
    audioPlayer3.play()
}

func playSound4(_ soundFileName : String) {
    guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: nil) else {
        fatalError("Unable to find \(soundFileName) in bundle")
    }

    do {
        audioPlayer4 = try AVAudioPlayer(contentsOf: soundURL)
    } catch {
        print(error.localizedDescription)
    }
    audioPlayer4.play()
}

func playSound5(_ soundFileName : String) {
    guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: nil) else {
        fatalError("Unable to find \(soundFileName) in bundle")
    }

    do {
        audioPlayer5 = try AVAudioPlayer(contentsOf: soundURL)
    } catch {
        print(error.localizedDescription)
    }
    audioPlayer5.play()
}

}




