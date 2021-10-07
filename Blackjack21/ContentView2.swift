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
    var body: some View {
        ZStack{
            Background()
            VStack{
                TextWidget(words: "Blackjack 21")
                TextWidget(words: "Dealer:")
                TextWidget(words: "Player")
                TextWidget(words: "Money: \(String(userMoney.num))")
                HStack{
                    Button(action:{
                        
                    }, label: {
                        ButtonWidget(words: "Hold")
                    })
                    Button(action:{
                        
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
