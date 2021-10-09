//
//  ContentView2.swift
//  Blackjack21
//
//  Created by Tim Randall on 3/10/21.
//

import SwiftUI


// image max is nine across
struct ContentView2: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var bet: IntOO
    @StateObject var userMoney: UserMoneyOO
    @State var showImage1: Bool = false
    @State var showImage2: Bool = false
    @State var showImage3: Bool = false
    @State var showImage4: Bool = false
    @State var showImage5: Bool = false
    @State var showImage6: Bool = false
    @State var showImage7: Bool = false
    @State var userSI: Bool = false
    @State var userSI2: Bool = false
    @State var userSI3: Bool = false
    @State var userSI4: Bool = false
    @State var userSI5: Bool = false
    @State var userSI6: Bool = false
    @State var userSI7: Bool = false
    @State var dealerTotal: Int = 0
    @State var userTotal: Int = 0
    @State var testDisplay: String = ""
    var body: some View {
        ZStack{
            Background()
            VStack{
                Group{
                    TextWidget(words: "Blackjack 21")
                    TextWidget(words: "Dealer:")
                }
                HStack {
                    PicView(image: dealerDeck[1].image)
                    PicView(image: dealerDeck[2].image)
                    if showImage1 == true {
                        PicView(image: dealerDeck[3].image)
                    }
                    if showImage2 == true {
                        PicView(image: dealerDeck[4].image)
                    }
                    if showImage3 == true {
                        PicView(image: dealerDeck[5].image)
                    }
                    if showImage4 == true {
                        PicView(image: dealerDeck[6].image)
                    }
                    if showImage5 == true {
                        PicView(image: dealerDeck[7].image)
                    }
                    if showImage6 == true {
                        PicView(image: dealerDeck[8].image)
                    }
                    if showImage7 == true {
                        PicView(image: dealerDeck[9].image)
                    }
                }
                TextWidget(words: "Player")
                TextWidget(words: testDisplay)
                HStack{
                    PicView(image: userDeck[1].image)
                    PicView(image: userDeck[2].image)
                    if userSI == true {
                        if userDeck.indices.contains(3) {
                            PicView(image: userDeck[3].image)
                        }
                    }
                    if userSI2 == true {
                        if userDeck.indices.contains(4) {
                            PicView(image: userDeck[4].image)
                        }
                    }
                    if userSI3 == true {
                        if userDeck.indices.contains(5) {
                            PicView(image: userDeck[5].image)
                        }
                    }
                    if userSI4 == true {
                        if userDeck.indices.contains(6) {
                            PicView(image: userDeck[6].image)
                        }
                    }
                    if userSI5 == true {
                        if userDeck.indices.contains(7) {
                            PicView(image: userDeck[7].image)
                        }
                    }
                    if userSI6 == true {
                        if userDeck.indices.contains(8) {
                            PicView(image: userDeck[8].image)
                        }
                    }
                    if userSI7 == true {
                        if userDeck.indices.contains(9) {
                            PicView(image: userDeck[9].image)
                        }
                    }
                }
                Group{
                    TextWidget(words: "Money: \(String(userMoney.num))")
                    HStack{
                        Button(action:{
                            dealerDrawAndCount()
                            countUserCardValues()
                            checkForAcesUser()
                            checkForAcesDealer()
                            testDisplay = "user \(String(userTotal)) dealer \(String(dealerTotal))"
                        }, label: {
                            ButtonWidget(words: "Hold")
                        })
                        Button(action:{
                            drawCard()
                        }, label: {
                            ButtonWidget(words: "Draw")
                        })
                    }
                }
            }
        }
    }
    func drawCard (){
        let randomNumber: Int = Int.random(in: 0...houseDeck.count)
        let drawnCard = houseDeck[randomNumber]
        userDeck.append(drawnCard)
        houseDeck.remove(at: randomNumber)
        if userDeck.indices.contains(2) {
            userSI = true
        }
        if userDeck.indices.contains(3) {
            userSI2 = true
        }
        if userDeck.indices.contains(4) {
            userSI3 = true
        }
        if userDeck.indices.contains(5) {
            userSI4 = true
        }
        if userDeck.indices.contains(6) {
            userSI5 = true
        }
        if userDeck.indices.contains(7) {
            userSI6 = true
        }
        if userDeck.indices.contains(8) {
            userSI7 = true
        }
    }
    func dealerDrawAndCount (){
        dealerTotal += dealerDeck[1].value
        dealerTotal += dealerDeck[2].value
        if dealerTotal < 17 {
            let randomNumber: Int = Int.random(in: 0...houseDeck.count)
            let drawnCard = houseDeck[randomNumber]
            dealerDeck.append(drawnCard)
            houseDeck.remove(at: randomNumber)
        }
        if dealerDeck.indices.contains(3) {
            dealerTotal += dealerDeck[3].value
            showImage1 = true
        }
    }
    func checkForAcesDealer() {
        if dealerTotal > 21 {
            for var item in dealerDeck {
                if item.name == "1d" || item.name == "1s" || item.name == "1h" || item.name == "1c" {
                    item.value = 1
                }
            }
            dealerTotal = dealerDeck[1].value + dealerDeck[2].value
            if dealerDeck.indices.contains(3) {
                dealerTotal += dealerDeck[3].value
            }
        }
    }
    func countUserCardValues(){
        userTotal += userDeck[1].value
        userTotal += userDeck[2].value
        if userDeck.indices.contains(3) {
            userTotal += userDeck[3].value
        }
        if userDeck.indices.contains(4) {
            userTotal += userDeck[4].value
        }
        if userDeck.indices.contains(5) {
            userTotal += userDeck[5].value
        }
        if userDeck.indices.contains(6) {
            userTotal += userDeck[6].value
        }
        if userDeck.indices.contains(7) {
            userTotal += userDeck[7].value
        }
        if userDeck.indices.contains(8) {
            userTotal += userDeck[8].value
        }
        if userDeck.indices.contains(9) {
            userTotal += userDeck[9].value
        }
    }
    func checkForAcesUser(){
        if userTotal > 21 {
            for var item in userDeck {
                if item.name == "1d" || item.name == "1s" || item.name == "1h" || item.name == "1c" {
                    item.value = 1
                }
            }
            userTotal = userDeck[1].value + userDeck[2].value
            if userDeck.indices.contains(3) {
                userTotal += userDeck[3].value
            }
        }
    }
    func compareTotalsAndAllocateBet(){
        
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2(viewRouter: ViewRouter(), bet: IntOO(), userMoney: UserMoneyOO())
    }
}
