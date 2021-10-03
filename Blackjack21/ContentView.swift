//
//  ContentView.swift
//  Blackjack21
//
//  Created by Tim Randall on 29/9/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    @State var betString: String = ""
    var body: some View {
        ZStack{
            Background()
            VStack{
                Title(words: "Blackjack 21")
                Spacer()
                Image("AS").resizable()
                    .frame(width: 100, height: 150)
                Spacer()
                TextWidget(words: "You have $\(String(userMoney.num)).")
                TextWidget(words: "How much would you like to bet?")
                TextField("Enter your bet here", text: $betString).fixedSize()
                    .frame(width: 200, height: 50)
                Button(action:{
                    viewRouter.currentPage = 2
                }, label:{
                    ButtonWidget(words: "Gamble On!!")
                })
                Spacer()
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
