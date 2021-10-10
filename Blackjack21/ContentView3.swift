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
    @ObservedObject var bet: IntOO
    @ObservedObject var userScore: IntOO
    @ObservedObject var dealerScore: IntOO
    @ObservedObject var winner: StringOO
    var body: some View {
        ZStack{
            Background()
            VStack{
                TextWidget(words: "Results!")
                TextWidget(words: "You got: \(String(userScore.num))")
                TextWidget(words: "The dealer got: \(String(dealerScore.num))")
                TextWidget(words: "\(winner.words) won \(String(bet.num))")
                TextWidget(words: "You have \(String(userMoney.num))")
            }
        }
    }
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3(viewRouter: ViewRouter(), userMoney: UserMoneyOO(), bet: IntOO(), userScore: IntOO(), dealerScore: IntOO(), winner: StringOO())
    }
}
