//
//  ProgressBar.swift
//  YAZIOnew
//
//  Created by Luigi Poziello on 23/11/22.
//

import SwiftUI

struct ProgressBar: View {
    var width: CGFloat = 200
    var height: CGFloat = 20
    var percent: CGFloat = 39
    
    var body: some View {
        let multiplier = width / 100
        
        
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: height)
                .frame(width: width, height: height)
                .foregroundColor(Color.black.opacity(0.1 ))
            
            RoundedRectangle(cornerRadius: height)
                .frame(width: percent * multiplier, height: height)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .leading, endPoint: .trailing))
                .clipShape(RoundedRectangle(cornerRadius: height))
                .foregroundColor(.clear)
            
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}
