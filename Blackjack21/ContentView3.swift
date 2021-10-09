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
    var body: some View {
        ZStack{
            Background()
            VStack{
                TextWidget(words: "Results!")
                TextWidget(words: "You got: ")
                TextWidget(words: "The dealer got: ")
                TextWidget(words: "won ")
                TextWidget(words: "You have \(String(userMoney.num))")
            }
        }
    }
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3(viewRouter: ViewRouter(), userMoney: UserMoneyOO())
    }
}
