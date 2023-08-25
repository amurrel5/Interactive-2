//
//  ContentView.swift
//  Interactive 2
//
//  Created by scholar on 4/19/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var titleText = "What is your name?"
    @State private var age = ""
    @State private var presentAlert = false
    
    var body: some View {
        
     
        VStack (spacing: 50){
           Text (titleText)
                .font(.title)
                .foregroundColor(Color.purple)
            
            TextField("Type Names Here", text: $name)
                
                .multilineTextAlignment(.center)
                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                
            Text("How old are you?")
                .font(.title)
                .foregroundColor(.purple)
            
            TextField("Type age here", text: $age)
                .multilineTextAlignment(.center)
                .font(.title3)
                .border(Color.gray, width: 1)
            Button("Submit") {
                titleText = "Hi, \(name)!"
                presentAlert = true
                

                
                    
            }
            Spacer()
            
        }
        .padding()
        .alert("Welcome to the Experience!", isPresented: $presentAlert, actions: {
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
