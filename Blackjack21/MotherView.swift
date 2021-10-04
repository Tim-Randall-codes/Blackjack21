//
//  MotherView.swift
//  Blackjack21
//
//  Created by Tim Randall on 3/10/21.
//

import SwiftUI

struct MotherView: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var bet: IntOO
    @StateObject var userMoney: UserMoneyOO
    @StateObject var houseDeck: OriginalDeckOO
    @StateObject var userDeck: PlayerDeckOO
    @StateObject var dealerDeck: PlayerDeckOO
    var body: some View {
        if viewRouter.currentPage == 1 {
            ContentView(viewRouter: viewRouter, bet: bet, userMoney: userMoney, houseDeck: houseDeck, userDeck: userDeck, dealerDeck: dealerDeck)
        }
        else if viewRouter.currentPage == 2 {
            ContentView2(viewRouter: viewRouter, bet: bet, userMoney: userMoney, houseDeck: houseDeck, userDeck: userDeck, dealerDeck: dealerDeck)
        }
        else if viewRouter.currentPage == 3 {
            ContentView3(viewRouter: viewRouter)
        }
        else if viewRouter.currentPage == 4 {
            ContentView4(viewRouter: viewRouter)
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter(), bet: IntOO(), userMoney: UserMoneyOO(), houseDeck: OriginalDeckOO(), userDeck: PlayerDeckOO(), dealerDeck: PlayerDeckOO())
    }
}
