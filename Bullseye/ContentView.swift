//
//  ContentView.swift
//  Bullseye
//
//  Created by Necdet Alperen Özil on 26.12.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to my first iOS app!")
                .foregroundColor(Color.purple)
                .padding()
            Button(action: {
                print("button pressed")
            }) {
                Text("I am a button")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
