//
//  ContentView2.swift
//  Blackjack21
//
//  Created by Tim Randall on 3/10/21.
//

import SwiftUI

struct ContentView2: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var bet: IntOO
    @StateObject var userMoney: UserMoneyOO
    @StateObject var houseDeck: OriginalDeckOO
    @StateObject var userDeck: PlayerDeckOO
    @StateObject var dealerDeck: PlayerDeckOO
    var body: some View {
        Text("hello world")
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2(viewRouter: ViewRouter(), bet: IntOO(), userMoney: UserMoneyOO(), houseDeck: OriginalDeckOO(), userDeck: PlayerDeckOO(), dealerDeck: PlayerDeckOO())
    }
}
