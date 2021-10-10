//
//  stuff.swift
//  Blackjack21
//
//  Created by Tim Randall on 29/9/21.
//

import Foundation
import SwiftUI

struct Card {
    var name: String
    var value: Int
    var image: String
    init (name: String, value: Int, image: String){
        self.name = name
        self.value = value
        self.image = image
    }
}

var originalDeck: Array = [
    Card(name: "1d", value: 11, image: "AD"),
    Card(name: "1h", value: 11, image: "AH"),
    Card(name: "1c", value: 11, image: "AC"),
    Card(name: "1s", value: 11, image: "AS"),
    Card(name: "2d", value: 2, image: "2D"),
    Card(name: "2h", value: 2, image: "2H"),
    Card(name: "2c", value: 2, image: "2C"),
    Card(name: "2s", value: 2, image: "2S"),
    Card(name: "3d", value: 3, image: "3D"),
    Card(name: "3h", value: 3, image: "3H"),
    Card(name: "3c", value: 3, image: "3C"),
    Card(name: "3s", value: 3, image: "3S"),
    Card(name: "4d", value: 4, image: "4D"),
    Card(name: "4h", value: 4, image: "4H"),
    Card(name: "4c", value: 4, image: "4C"),
    Card(name: "4s", value: 4, image: "4S"),
    Card(name: "5d", value: 5, image: "5D"),
    Card(name: "5h", value: 5, image: "5H"),
    Card(name: "5c", value: 5, image: "5C"),
    Card(name: "5s", value: 5, image: "5S"),
    Card(name: "6d", value: 6, image: "6D"),
    Card(name: "6h", value: 6, image: "6H"),
    Card(name: "6c", value: 6, image: "6C"),
    Card(name: "6s", value: 6, image: "6S"),
    Card(name: "7d", value: 7, image: "7D"),
    Card(name: "7h", value: 7, image: "7H"),
    Card(name: "7c", value: 7, image: "7C"),
    Card(name: "7s", value: 7, image: "7S"),
    Card(name: "8d", value: 8, image: "8D"),
    Card(name: "8h", value: 8, image: "8H"),
    Card(name: "8c", value: 8, image: "8C"),
    Card(name: "8s", value: 8, image: "8S"),
    Card(name: "9d", value: 9, image: "9D"),
    Card(name: "9h", value: 9, image: "9H"),
    Card(name: "9c", value: 9, image: "9C"),
    Card(name: "9s", value: 9, image: "9S"),
    Card(name: "10d", value: 10, image: "10D"),
    Card(name: "10h", value: 10, image: "10H"),
    Card(name: "10c", value: 10, image: "10C"),
    Card(name: "10s", value: 10, image: "10S"),
    Card(name: "jd", value: 10, image: "JD"),
    Card(name: "jh", value: 10, image: "JH"),
    Card(name: "jc", value: 10, image: "JC"),
    Card(name: "js", value: 10, image: "JS"),
    Card(name: "qd", value: 10, image: "QD"),
    Card(name: "qh", value: 10, image: "QH"),
    Card(name: "qc", value: 10, image: "QC"),
    Card(name: "qs", value: 10, image: "QS"),
    Card(name: "kd", value: 10, image: "KD"),
    Card(name: "kh", value: 10, image: "KH"),
    Card(name: "kc", value: 10, image: "KC"),
    Card(name: "ks", value: 10, image: "KS")]

var houseDeck: Array = originalDeck
var userDeck: Array = [Card(name: "first", value: 0, image: "one")]
var dealerDeck: Array = [Card(name: "first", value: 0, image: "one")]

struct Background: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.green, .green, .green, .black]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
    }
}

class ViewRouter: ObservableObject {
    @Published var currentPage: Int = 1
}

struct Title: View {
    var words: String
    var body: some View {
        Text(words).padding().font(.largeTitle)
    }
}

struct TextWidget: View {
    var words: String
    var body: some View {
        Text(words).padding().font(.system(size: 18, weight: .light, design: .default))
    }
}

struct ButtonWidget: View {
    var words: String
    var body: some View {
        Text(words)
            .padding()
            .font(.system(size: 18, weight: .bold, design: .default))
            .background(Color.white)
            .cornerRadius(30)
    }
}

class IntOO: ObservableObject {
    @Published var num: Float = 0
}

class UserMoneyOO: ObservableObject {
    @Published var num: Float = 100
}

struct PicView: View {
    var image: String
    var body: some View {
        Image(image).resizable()
            .frame(width: 50, height: 75)
    }
}

class StringOO: ObservableObject {
    @Published var words: String = ""
}
