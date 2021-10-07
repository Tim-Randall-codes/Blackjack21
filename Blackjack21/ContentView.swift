//
//  ContentView.swift
//  Blackjack21
//
//  Created by Tim Randall on 29/9/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var bet: IntOO
    @StateObject var userMoney: UserMoneyOO
    @State var betString: String = ""
    @State var displayMessage: String = ""
    var body: some View {
        ZStack{
            Background()
            VStack{
                Title(words: "Blackjack 21")
                Spacer()
                Image("AS").resizable()
                    .frame(width: 100, height: 150)
                Spacer()
                TextWidget(words: displayMessage)
                TextWidget(words: "You have.")
                TextWidget(words: "How much would you like to bet?")
                TextField("Enter your bet here", text: $betString).fixedSize()
                    .frame(width: 200, height: 50)
                Button(action:{
                    getBet()
                    getUserDeck()
                    getUserDeck()
                    getDealerDeck()
                    getDealerDeck()
                    checkForNaturalsUser()
                    checkForNaturalsDealer()
                    viewRouter.currentPage = 2
                }, label:{
                    ButtonWidget(words: "Gamble On!!")
                })
                Spacer()
            }
            .keyboardType(.decimalPad)
        }
    }
    func getBet () {
        if let betFloat = Float(betString) {
            displayMessage = ""
            bet.num = betFloat
        }
        else {
            displayMessage = "Please enter only numbers"
        }
    }
    func getUserDeck () {
        let randomNumber: Int = Int.random(in: 0...houseDeck.count)
        let drawnCard = houseDeck[randomNumber]
        userDeck.append(drawnCard)
        houseDeck.remove(at: randomNumber)
    }
    func getDealerDeck () {
        let randomNumber: Int = Int.random(in: 0...houseDeck.count)
        let drawnCard = houseDeck[randomNumber]
        dealerDeck.append(drawnCard)
        houseDeck.remove(at: randomNumber)
    }
    func checkForNaturalsUser () {
        var cardTotal: Int = 0
        for item in userDeck {
            cardTotal += item.value
        }
        if cardTotal == 21 {
            // win stuff
            userMoney.num += (bet.num * 1.5)
        }
        else {
            userMoney.num -= bet.num
        }
    }
    func checkForNaturalsDealer () {
        var cardTotal: Int = 0
        for item in dealerDeck {
            cardTotal += item.value
        }
        if cardTotal == 21 {
            // win stuff
            userMoney.num += (bet.num * 1.5)
        }
        else {
            userMoney.num -= bet.num
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter(), bet: IntOO(), userMoney: UserMoneyOO())
    }
}
