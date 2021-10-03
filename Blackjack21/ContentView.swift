//
//  ContentView.swift
//  Blackjack21
//
//  Created by Tim Randall on 29/9/21.
//

import SwiftUI

struct ContentView: View {
    @State var userDeck = []
    @StateObject var viewRouter: ViewRouter
    let randomCard = originalDeck[Int.random(in: 0...originalDeck.count)]
    @State var testSring: String = ""
    var body: some View {
        ZStack{
            Background()
            VStack{
                Text("Hello, world!")
                    .padding()
                Image(randomCard.image).resizable()
                    .frame(width: 100, height: 150)
                Text(testSring).padding()
                Button(action:{
                    takeCardsFromDeck()
                }, label: {
                    Text("do test")
                })
            }
        }
    }
    func takeCardsFromDeck () {
        let randomNumber: Int = Int.random(in: 0...originalDeck.count)
        let drawnCard = originalDeck[randomNumber]
        userDeck.append(drawnCard)
        originalDeck.remove(at: randomNumber)
        print(userDeck)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
