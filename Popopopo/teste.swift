//
//  teste.swift
//  Popopopo
//
//  Created by Dara Vasconcelos on 10/02/21.
//

import SwiftUI

struct teste: View {
    var body: some View {
        NavigationView{
            Sidebar()
        }
    }
}
struct Sidebar: View {
    var body: some View {
        List(1..<100) { i in
            Text("Row \(i)")
        }
        .listStyle(SidebarListStyle())
    }
}
struct teste_Previews: PreviewProvider {
    static var previews: some View {
        teste()
    }
}
