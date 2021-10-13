//
//  ContentView3.swift
//  Blackjack21
//
//  Created by Tim Randall on 3/10/21.
//

import SwiftUI

struct ContentView3: View {
    @StateObject var viewRouter: ViewRouter
    @ObservedObject var userMoney: UserMoneyOO
    @StateObject var bet: IntOO
    @StateObject var userScore: IntOO
    @StateObject var dealerScore: IntOO
    @StateObject var winner: StringOO
    var body: some View {
        ZStack{
            Background()
            VStack{
                Title(words: "Results!")
                Spacer()
                TextWidget(words: "You got: \(String(userScore.num))")
                TextWidget(words: "The dealer got: \(String(dealerScore.num))")
                TextWidget(words: "\(winner.words) won \(String(bet.num))")
                TextWidget(words: "You have \(String(userMoney.num))")
                Button(action:{
                    bet.num = 0
                    userScore.num = 0
                    dealerScore.num = 0
                    winner.words = ""
                    viewRouter.currentPage = 1
                    userDeck = [Card(name: "first", value: 0, image: "one")]
                    dealerDeck = [Card(name: "first", value: 0, image: "one")]
                }, label:{
                    ButtonWidget(words: "Continue")
                })
                Spacer()
            }
        }
    }
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3(viewRouter: ViewRouter(), userMoney: UserMoneyOO(), bet: IntOO(), userScore: IntOO(), dealerScore: IntOO(), winner: StringOO())
    }
}
