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
    @State var display: String = ""
    var body: some View {
        ZStack{
            Background()
            VStack{
                TextWidget(words: "Blackjack 21")
                TextWidget(words: "Dealer:")
                Text(display)
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
                TextWidget(words: "Money: \(String(userMoney.num))")
                HStack{
                    Button(action:{
                        viewRouter.currentPage = 1
                    }, label: {
                        ButtonWidget(words: "Hold")
                    })
                    Button(action:{
                        display = dealerDeck[1].name
                    }, label: {
                        ButtonWidget(words: "Draw")
                    })
                }
            }
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2(viewRouter: ViewRouter(), bet: IntOO(), userMoney: UserMoneyOO())
    }
}
