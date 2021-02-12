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
            Image("FundoTela")
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
                .frame(width: 112 , height: 112)
                .position(x: 676.45, y: 246.20)
                .opacity(self.showSombrinha ? 1 : 0)
            
            
            Image("Latinha")
                .resizable()
                .scaledToFit()
                .frame(width: 154.25, height: 125)
                .rotationEffect(Angle(degrees: -60))
                .position(x: 184.80, y: 320.33)
               
                .opacity(self.showLatinha ? 1 : 0)
               
                
            
            
            Image("Oculos")
                .resizable()
                .scaledToFit()
                .frame(width: 190, height: 124)
                .rotationEffect(Angle(degrees: -21))
                .position(x: 287.5, y: 83.5)
                .opacity(self.showOculos ? 1 : 0)
            
            
            Image("Estandarte")
                .resizable()
                .scaledToFit()
                .frame(width: 154, height: 242)
                .rotationEffect(Angle(degrees: -19))
                .position(x: 80, y: 140)
                .opacity(self.showEstandarte ? 1 : 0)
            
            Image("Olhos")
                .resizable()
                .scaledToFit()
                .frame(width: 113, height: 87)
                .rotationEffect(Angle(degrees: 21))
                .position(x: 595, y: 347)
                .opacity(self.showOlhos ? 1 : 0)

            Image("Bico")
                .resizable()
                .scaledToFit()
                .frame(width: 139, height: 145)
                .rotationEffect(Angle(degrees: -42))
                .position(x: 593, y: 70)
                .opacity(self.showBico ? 1 : 0)
            
            HStack{
                VStack(alignment: .leading){
                    Button(action: {
                        self.soundButton.toggle()
                       
                           // SoundPopup(soundButton: $soundButton)
    
                        
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
