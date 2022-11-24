//
//  food.swift
//  YAZIOnew
//
//  Created by Luigi Poziello on 18/11/22.
//
import SwiftUI

struct food: View {
    @State var date: Date = Date()
    @State var breakfast: [Meal] = []
    @State var modal: Bool = false
    let gradient = Gradient(colors: [Color("Color3"),Color("Color4")])

    var totalCalories: Int {
        breakfast.reduce(0) { $0 + $1.calories }
    }
    
    var dailyCal = 2000
    
    var caloriesPercentage: Int {
        min(100, (totalCalories * 100) / dailyCal)
    }
    
    var body: some View {
        
        NavigationView(){
            
            VStack {
                HStack{
                    
                    Text("Daily intake")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                    
                        Button{
                            modal = true
                        } label: {
                            Image(systemName: "calendar")
                                .bold()
                        }
                        
                    }
                
                HStack{
                    Text("Let's add what you're eating today!")
                    
                    Spacer()
                    
                }
                
                .sheet(isPresented: $modal) {
                    VStack{
                        HStack{
                            Text("Planner")
                                .font(.largeTitle)
                                .bold()
                            Spacer()
                                
                        }
                        HStack{
                            Text("Do you remember what you ate yesterday?")
                            Spacer()
                            
                        }
                        
                    }
                   
                        .padding()
                    DatePicker(
                           "Start Date",
                           selection: $date,
                           displayedComponents: [.date]
                       )
                       .datePickerStyle(.graphical)
                    Spacer()
                }
                
                ZStack{
                    
                    
                    
                   
                    RoundedRectangle(cornerRadius: 20).fill(LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .trailing))
                    
                            
                    
                    
                    VStack{
                        Text("Recap")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .padding()
                            .foregroundColor(.white)
                        
                        Text("Total \(breakfast.reduce(0) { $0 + $1.calories} )/2000")
                            .fontWeight(.semibold)
                            .font(.system(size: 22))
                            .foregroundColor(.white)
                        Spacer()
                        ProgressBar(width: 300, height: 20, percent: CGFloat(caloriesPercentage))
                            
                            
                            
                            
                        
                        Spacer()
                        HStack{
                           
                            
                            
                        }
                    }
                    
                }
                
                Spacer()
                HStack{
                    NavigationLink(destination: Breakfast(selected: $breakfast)){
                        ZStack{
                            RoundedRectangle(cornerRadius: 30)
                                
                                .fill(LinearGradient(gradient: Gradient(colors:[.white,Color("Color1")  ]), startPoint: .top, endPoint: .bottom)).frame(height: 200)
                                .shadow(color:Color("Color1"), radius: 5, x:0, y: 6)
                                
                                
                            
                            RoundedRectangle(cornerRadius: 6)
                                .frame(width:100, height: 20)
                                .offset(x: 25, y: -85)
                            Text("Breakfast")
                                .offset(x:25, y:-85)
                                .foregroundColor(.white)
                            Image(systemName: "plus.circle")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .foregroundColor(.accentColor)
                                
                            
                        }
                    }
                    
                    NavigationLink(destination: Launch()){
                        ZStack{
                            RoundedRectangle(cornerRadius: 30)
                                
                                .fill(LinearGradient(gradient: Gradient(colors:[.white,Color("Color1")  ]), startPoint: .top, endPoint: .bottom)).frame(height: 200)
                                .shadow(color:Color("Color1"), radius: 5, x:0, y: 6)
                            RoundedRectangle(cornerRadius: 6)
                                .frame(width:100, height: 20)
                                .offset(x: 25, y: -85)
                            Text("Lunch")
                                .offset(x:25, y:-85)
                                .foregroundColor(.white)
                            Image(systemName: "plus.circle")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .foregroundColor(.accentColor)
                               
                        }
                    }
                }
                
                HStack{
                    NavigationLink(destination: Dinner()){
                        
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 30)
                                
                                .fill(LinearGradient(gradient: Gradient(colors:[.white,Color("Color1")  ]), startPoint: .top, endPoint: .bottom)).frame(height: 200)
                                .shadow(color:Color("Color1"), radius: 5, x:0, y: 6)
                            RoundedRectangle(cornerRadius: 6)
                                .frame(width:100, height: 20)
                                .offset(x: 25, y: -85)
                            Text("Dinner")
                                .offset(x:25, y:-85)
                                .foregroundColor(.white)
                            Image(systemName: "plus.circle")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .foregroundColor(.accentColor)
                              
                        }
                    }
                    
                    
                    
                    NavigationLink(destination: Snacks()){
                        ZStack{
                            RoundedRectangle(cornerRadius: 30)
                                
                                .fill(LinearGradient(gradient: Gradient(colors:[.white,Color("Color1")  ]), startPoint: .top, endPoint: .bottom)).frame(height: 200)
                                .shadow(color:Color("Color1"), radius: 5, x:0, y: 6)
                            RoundedRectangle(cornerRadius: 6)
                                .frame(width:100, height: 20)
                                .offset(x: 25, y: -85)
                            Text("Snacks")
                                .offset(x:25, y:-85)
                                .foregroundColor(.white)
                            Image(systemName: "plus.circle")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .foregroundColor(.accentColor)
                                
                        }
                    }
                    
                    
                    
                }
                Spacer()
            }
            .padding(.all)
            
            
            
            
            
            
        }
    }
}

struct food_Previews: PreviewProvider {
    static var previews: some View {
        food()
    }
}
