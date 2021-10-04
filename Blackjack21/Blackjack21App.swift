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
    @StateObject var userMoney = UserMoneyOO()
    @StateObject var houseDeck = OriginalDeckOO()
    @StateObject var userDeck = PlayerDeckOO()
    @StateObject var dealerDeck = PlayerDeckOO()
    var body: some Scene {
        WindowGroup {
            MotherView(viewRouter: viewRouter, bet: bet, userMoney: userMoney, houseDeck: houseDeck, userDeck: userDeck, dealerDeck: dealerDeck)
        }
    }
}
