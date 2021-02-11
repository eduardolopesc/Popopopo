//
//  CommonView.swift
//  Popopopo
//
//  Created by Eduardo Lopes de Carvalho on 09/02/21.
//

import SwiftUI
import AVFoundation

struct CommonView: View {
    @State var soundButton = false
    @State var showMenu = false
    @State var showSombrinha = false
    @State var showLatinha = false
    @State var showOculos = false
    @State var showEstandarte = false
    @State var showOlhos = false
    @State var showBico = false
    @State var audioPlayerfrevo: AVAudioPlayer!

    
    var body: some View {
        ZStack{
            Image("backgroundImage")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .onAppear(perform: {
                    playSoundfrevo("frevo.mp3")
                    audioPlayerfrevo.numberOfLoops = -1
                    audioPlayerfrevo.setVolume(0.9, fadeDuration: 0)

                })
            
            Image("Sombrinha")
                .resizable()
                .scaledToFit()
                .frame(width: 55, height: 55)
                .position(x: 50, y: 50)
                .opacity(self.showSombrinha ? 1 : 0)
            
            
            Image("Latinha")
                .resizable()
                .scaledToFit()
                .frame(width: 55, height: 55)
                .position(x: 100, y: 50)
                .opacity(self.showLatinha ? 1 : 0)
            
            
            Image("Oculos")
                .resizable()
                .scaledToFit()
                .frame(width: 55, height: 55)
                .position(x: 50, y: 100)
                .opacity(self.showOculos ? 1 : 0)
            
            
            Image("Estandarte")
                .resizable()
                .scaledToFit()
                .frame(width: 55, height: 55)
                .position(x: 150, y: 50)
                .opacity(self.showEstandarte ? 1 : 0)
            
            Image("Olhos")
                .resizable()
                .scaledToFit()
                .frame(width: 55, height: 55)
                .position(x: 150, y: 50)
                .opacity(self.showOlhos ? 1 : 0)

            Image("Bico")
                .resizable()
                .scaledToFit()
                .frame(width: 55, height: 55)
                .position(x: 150, y: 100)
                .opacity(self.showBico ? 1 : 0)
            
            HStack{
                VStack(alignment: .leading){
                    Button(action: {
                        self.soundButton.toggle()
                       
                            SoundPopup(soundButton: $soundButton)
    
                        
                    }, label: {
                        Image(systemName: "speaker.wave.2")
                            .foregroundColor(Color("darkColor"))
                            .padding(8)
                    })
                    .background(Color("lightColor"))
                    .cornerRadius(5)
                    .shadow(radius: 10)
                        .padding()
                    Spacer()

                    HelpButton()
                        .padding()
                }
                Spacer()
                VStack{
                    ItemsButton(showMenu: $showMenu)
                        .padding([.top, .leading, .bottom])
                    Menu(showSombrinha: $showSombrinha, showLatinha: $showLatinha, showOculos: $showOculos, showEstandarte: $showEstandarte, showOlhos: $showOlhos, showBico: $showBico).offset(x: self.showMenu ? 0 : UIScreen.main.bounds.width)
                        .animation(.easeInOut)

                    Spacer()

                }
                
            }
            
        }
    }

    func playSoundfrevo(_ soundFileName : String) {
        guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: nil) else {
            fatalError("Unable to find \(soundFileName) in bundle")
        }

        do {
            audioPlayerfrevo = try AVAudioPlayer(contentsOf: soundURL)
        } catch {
            print(error.localizedDescription)
        }
        audioPlayerfrevo.prepareToPlay()
        audioPlayerfrevo.play()
    }
}



struct HelpButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(systemName: "questionmark.circle")
                .foregroundColor(Color("darkColor"))
                .padding(8)
            
        })
        .background(Color("lightColor"))
        .cornerRadius(5)
        .shadow(radius: 10)
        
    }
}
//struct SoundButton: View {
//    @State var soundButton = false
//
//    var body: some View {
//        Button(action: {
//            self.soundButton = true
//
//        }, label: {
//            Image(systemName: "speaker.wave.2")
//                .foregroundColor(Color("darkColor"))
//                .padding(8)
//        })
//        .background(Color("lightColor"))
//        .cornerRadius(5)
//        .shadow(radius: 10)
//
//    }
//}

struct ItemsButton: View {
    @Binding var showMenu: Bool
    var body: some View {
        Button(action: {
            self.$showMenu.wrappedValue.toggle()
        }, label: {
            Image(systemName: $showMenu.wrappedValue ? "chevron.right" : "chevron.left")
                .foregroundColor(Color("darkColor"))
                .padding(.horizontal, 30.0)
                .padding(.vertical, 8.0)
        })
        .background(Color("lightColor"))
        .cornerRadius(5)
        .shadow(radius: 10)

    }
}

struct CommonView_Previews: PreviewProvider {
    static var previews: some View {
        CommonView().previewDevice("iPhone 11").previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/896.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/414.0/*@END_MENU_TOKEN@*/))

    }
}
