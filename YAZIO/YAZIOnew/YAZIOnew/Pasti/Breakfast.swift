//
//  Breakfast.swift
//  YAZIOnew
//
//  Created by Luigi Poziello on 21/11/22.
//

import SwiftUI

struct Breakfast: View {
    @Binding var selected: [Meal]
    @State var showModal: Bool = false
    @State var mealList: [Meal] = [
        Meal(name: "Pasta", calories: 590),
        Meal(name: "Pane", calories: 1590),
        Meal(name: "Insalata", calories: 90),
    ]
    
    var body: some View {
        VStack {
            HStack{
                
                Text("Meals")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Spacer()
            }
            List{
                ForEach(selected.indices, id: \.self) { mealIndex in
                    HStack {
                        Text(selected[mealIndex].name)
                        Spacer()
                        Text("\(selected[mealIndex].calories)")
                            .foregroundColor(.secondary)
                    }
                }.onDelete { index in
                    selected.remove(atOffsets: index)
                }
            }

            Button("Add meal") {
                
                showModal = true
            }
            .foregroundColor(.white)
            .frame(width:120, height: 50)
                .background(Color.accentColor)
                .cornerRadius(12)
                .bold()
            
        
            
            
            
        }.sheet(isPresented: $showModal) {
            List(mealList.indices, id: \.self){ mealIndex in
                HStack {
                    Text(mealList[mealIndex].name)
                    Spacer()
                    Text("\(mealList[mealIndex].calories)")
                        .foregroundColor(.secondary)
                }.onTapGesture {
                    showModal = false
                    selected.append(mealList[mealIndex])
                }
            }
        }
    }
}

struct Breakfast_Previews: PreviewProvider {
    static var previews: some View {
        Breakfast(selected: .constant([Meal(name: "Pasta", calories: 590)]))
    }
}
