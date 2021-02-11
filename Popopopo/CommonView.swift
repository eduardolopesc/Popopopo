//
//  CommonView.swift
//  Popopopo
//
//  Created by Eduardo Lopes de Carvalho on 09/02/21.
//

import SwiftUI

struct CommonView: View {
    @State var soundButton = false
    @State var showMenu = false

    var body: some View {
        ZStack{
            Image("backgroundImage")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

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
                    Menu().offset(x: self.showMenu ? 0 : UIScreen.main.bounds.width)
                        .animation(.easeInOut)

                    Spacer()

                }
                
            }
            
        }
    }
}

struct Menu: View {
    var body: some View {
        VStack{
            ScrollView{
                Button(action: {
                    
                }){
                    VStack(){
                        Image("Sombrinha")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                            .shadow(radius: 5)
                        Text("Sombrinha")
                            .font(.caption)
                            .foregroundColor(Color("darkColor"))
        
                    }
                }.padding([.top, .leading, .trailing])
           
                Button(action: {
                 
                }){
                    VStack(){
                        Image("Sombrinha")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                            .shadow(radius: 5)
                        Text("Sombrinha")
                            .font(.caption)
                            .foregroundColor(Color("darkColor"))
                    }
                }.padding([.top, .leading, .trailing])
                Button(action: {
             
                    
                }){
                    VStack(){
                        Image("Sombrinha")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                            .shadow(radius: 5)
                        Text("Sombrinha")
                            .font(.caption)
                            .foregroundColor(Color("darkColor"))
                    }
                }.padding([.top, .leading, .trailing])
               // Spacer()
            }
         
        }.background(Color("lightColor"))
        .cornerRadius(5)
    
   
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
