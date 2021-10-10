//
//  Blackjack21App.swift
//  Blackjack21
//
//  Created by Tim Randall on 29/9/21.
//

import SwiftUI

@main
struct Blackjack21App: App {
    @StateObject var viewRouter = ViewRouter()
    @StateObject var bet = IntOO()
    @StateObject var dealerScore = IntOO()
    @StateObject var userScore = IntOO()
    @StateObject var userMoney = UserMoneyOO()
    @StateObject var winner = StringOO()
    var body: some Scene {
        WindowGroup {
            MotherView(viewRouter: viewRouter, bet: bet, dealerScore: dealerScore, userScore: userScore, userMoney: userMoney, winner: winner)
        }
    }
}
