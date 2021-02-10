//
//  soundPopup.swift
//  Popopopo
//
//  Created by Dara Vasconcelos on 10/02/21.
//

import SwiftUI

struct SoundPopup: View {
    @Binding var soundButton:Bool
    var body: some View {
        if ($soundButton.wrappedValue) {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
                   Color("lightColor")
                VStack(alignment: .leading){
                    Text("Opa!")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal,35)
                        .padding()
                        .foregroundColor(Color("darkColor"))
                    Text("Não é possivel desligar o som do carnaval :)")
                        .font(.title3)
                        .fontWeight(.regular)
                        .padding(.horizontal,50)
                       // .padding()
                        .foregroundColor(Color("darkColor"))

                        
                       Spacer()
                    HStack{
                        Spacer()
                        Button(action: {
                            self.soundButton.toggle()
                        }, label: {
                            Text("Tuts Tuts")
                             .foregroundColor(Color("darkColor"))

                        })
                        .padding(10)
                        .frame(width: 97.0, height: 32.0)
                        .background(Color("btnColor"))
                        .cornerRadius(25)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

                    }.padding()
                     

                   }.padding()

               }
               .frame(width: 483, height: 250)
               .cornerRadius(20).shadow(radius: 20)
        }
         
        }
     
    
}



