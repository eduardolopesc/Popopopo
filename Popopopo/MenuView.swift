//
//  MenuView.swift
//  Popopopo
//
//  Created by Dara Vasconcelos on 11/02/21.
//

import SwiftUI

struct Menu: View {
    @Binding var showSombrinha:Bool
    @Binding var showLatinha :Bool
    @Binding var showOculos :Bool
    @Binding var showEstandarte:Bool
    @Binding var showOlhos:Bool
    @Binding var showBico:Bool
    
    
    

    var body: some View {
        VStack{
            ScrollView{
                Button(action: {
                    $showSombrinha.wrappedValue.toggle()
                    
                }){
                    VStack(){
                        Image("Sombrinha")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                            .shadow(radius: self.showSombrinha ? 0 : 5)
                            .opacity(self.showSombrinha ? 0.5 : 1 )
                        Text("Sombrinha")
                            .font(.caption)
                            .foregroundColor(Color("darkColor"))
        
                    }
                }.padding([.top, .leading, .trailing])
           
                Button(action: {
                    $showLatinha.wrappedValue.toggle()

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
                            .font(.caption)
                            .foregroundColor(Color("darkColor"))
                    }
                }.padding([.top, .leading, .trailing])
                
                Button(action: {
                    $showOculos.wrappedValue.toggle()
                    
                }){
                    VStack(){
                        Image("Oculos")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                            .shadow(radius: self.showOculos ? 0 : 5)
                            .opacity(self.showOculos ? 0.5 : 1 )
                        Text("Óculos")
                            .font(.caption)
                            .foregroundColor(Color("darkColor"))
                    }
                    
                    
                }.padding([.top, .leading, .trailing])
                
                
                Button(action: {
                    $showEstandarte.wrappedValue.toggle()
                    
                }){
                    VStack(){
                        Image("Estandarte")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                            .shadow(radius: $showEstandarte.wrappedValue ? 0 : 5)
                            .opacity($showEstandarte.wrappedValue ? 0.5 : 1 )
                        Text("Estandarte")
                            .font(.caption)
                            .foregroundColor(Color("darkColor"))
                    }
                    
                    
                }.padding([.top, .leading, .trailing])
                
                
                Button(action: {
                    $showOlhos.wrappedValue.toggle()
                    
                }){
                    VStack(){
                        Image("Olhos")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                            .shadow(radius: $showOlhos.wrappedValue ? 0 : 5)
                            .opacity($showOlhos.wrappedValue ? 0.5 : 1 )
                        Text("Olhos")
                            .font(.caption)
                            .foregroundColor(Color("darkColor"))
                    }
                    
                    
                }.padding([.top, .leading, .trailing])
                
                
                Button(action: {
                    $showBico.wrappedValue.toggle()
                    
                }){
                    VStack(){
                        Image("Bico")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                            .shadow(radius: $showBico.wrappedValue ? 0 : 5)
                            .opacity($showBico.wrappedValue ? 0.5 : 1 )
                        Text("Bico")
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

