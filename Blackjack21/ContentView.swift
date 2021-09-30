//
//  ContentView.swift
//  Blackjack21
//
//  Created by Tim Randall on 29/9/21.
//

import SwiftUI

struct ContentView: View {
    let randomCard = originalDeck[Int.random(in: 0...originalDeck.count)]
    var body: some View {
        ZStack{
            Background()
            VStack{
                Text("Hello, world!")
                    .padding()
                Image(randomCard.image).resizable()
                    .frame(width: 100, height: 150)
            }
        }
    }
}

struct Background: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.green, .green, .green, .black]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
