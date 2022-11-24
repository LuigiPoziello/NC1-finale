//
//  ContentView.swift
//  YAZIOnew
//
//  Created by Luigi Poziello on 18/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.blue)
                .frame(width: 300, height: 80)
                Text("FORZA NAPOLI")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.white)

                
            }
            
            
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
