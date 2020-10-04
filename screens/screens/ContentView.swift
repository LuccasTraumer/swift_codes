//
//  ContentView.swift
//  screens
//
//  Created by user182163 on 10/4/20.
//  Copyright © 2020 user182163. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var changeText = false;
    var body: some View {
        
        VStack {
            
            HStack {
                Spacer()
                Button(action: {
                                        self.changeText = !self.changeText;                }) {
                    Text("Butao 1")
                }
                Spacer()
                Button(action: {
                                    self.changeText = !self.changeText;                }) {
                    Text("Botao 2").foregroundColor(Color.green)
                }
                Spacer()
                Button(action: {
                    self.changeText = !self.changeText;
                }) {
                    Text("Botao 3").foregroundColor(Color.red)
                }
                Spacer()
            }.padding(.vertical, 20)
            
            if (changeText) {
                Text("Agora é pra mostrar!");
            } else {
                Text("Agora NÃO é pra mostrar");
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
