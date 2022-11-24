//
//  tab.swift
//  YAZIOnew
//
//  Created by Luigi Poziello on 18/11/22.
//

import SwiftUI

struct tab: View {
    var body: some View {
        
        
        
        TabView{
            
            food()
                .tabItem{
                    Label("Food", systemImage: "fork.knife.circle.fill")
                }
            ContentView()
                .tabItem{
                    Label("Profile",systemImage: "person.crop.circle.fill")
                }
        }
    }
}

struct tab_Previews: PreviewProvider {
    static var previews: some View {
        tab()
    }
}
