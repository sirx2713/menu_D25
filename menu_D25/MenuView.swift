//
//  ContentView.swift
//  menu_D25
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/14.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems: [MenuItem] = [MenuItem]()
    var dataServices = Item_Info()
    
    var body: some View {
        Text("Sushi Menu")
            .font(.largeTitle)
            .bold()
        List(menuItems){item in
            
            HStack{
                item.imageName
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 50, height: 50)
                    .cornerRadius(10)
                Text(item.name)
                    .bold()
                Spacer()
                Text("$" + item.price)
            }
            .listRowBackground(
                Color(.brown)
                    .opacity(0.1))
            
        }
        .listStyle(.plain)
        .onAppear(perform: {
            menuItems = dataServices.getdata()
        })
    }
}

#Preview {
    MenuView()
}
