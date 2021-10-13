//
//  ContentView4.swift
//  Blackjack21
//
//  Created by Tim Randall on 3/10/21.
//

import SwiftUI

struct ContentView4: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var userMoney: UserMoneyOO
    @StateObject var bet: IntOO
    @StateObject var userScore: IntOO
    @StateObject var dealerScore: IntOO
    var body: some View {
        ZStack{
            Background()
            VStack{
                Title(words: "Game Over Dude")
                Spacer()
                TextWidget(words: "Sorry buddy you ran out of bux!")
                Button(action:{
                    userMoney.num = 100
                    bet.num = 0
                    userScore.num = 0
                    dealerScore.num = 0
                    userDeck = [Card(name: "first", value: 0, image: "one")]
                    dealerDeck = [Card(name: "first", value: 0, image: "one")]
                    viewRouter.currentPage = 1
                }, label:{
                    ButtonWidget(words: "Press to start gambling again")
                })
                Spacer()
            }
        }
    }
}

struct ContentView4_Previews: PreviewProvider {
    static var previews: some View {
        ContentView4(viewRouter: ViewRouter(), userMoney: UserMoneyOO(), bet: IntOO(), userScore: IntOO(), dealerScore: IntOO())
    }
}
