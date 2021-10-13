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
    @StateObject var dealerScore: IntOO
    @StateObject var userScore: IntOO
    @StateObject var userMoney: UserMoneyOO
    @StateObject var winner: StringOO
    var body: some View {
        if viewRouter.currentPage == 1 {
            ContentView(viewRouter: viewRouter, bet: bet, userMoney: userMoney, winner: winner)
        }
        else if viewRouter.currentPage == 2 {
            ContentView2(viewRouter: viewRouter, bet: bet, userScore: userScore, dealerScore: dealerScore, userMoney: userMoney, winner: winner)
        }
        else if viewRouter.currentPage == 3 {
            ContentView3(viewRouter: viewRouter, userMoney: userMoney, bet: bet, userScore: userScore, dealerScore: dealerScore, winner: winner)
        }
        else if viewRouter.currentPage == 4 {
            ContentView4(viewRouter: viewRouter, userMoney: userMoney, bet: bet, userScore: userScore, dealerScore: dealerScore)
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter(), bet: IntOO(), dealerScore: IntOO(), userScore: IntOO(), userMoney: UserMoneyOO(), winner: StringOO())
    }
}
