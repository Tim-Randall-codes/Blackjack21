//
//  stuff.swift
//  Blackjack21
//
//  Created by Tim Randall on 29/9/21.
//

import Foundation

struct Card {
    var name: String
    var value: Int
    var selectionNumber: Int
    var imageSelector: String
    init (name: String, value: Int, selectionNumber: Int, imageSelector: String){
        self.name = name
        self.value = value
        self.selectionNumber = selectionNumber
        self.imageSelector = imageSelector
    }
}
var testCard = Card(name: "Hi", value: 2, selectionNumber: 1, imageSelector: "2H")
