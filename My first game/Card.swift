//
//  Card.swift
//  My first game
//
//  Created by Анна Заблуда on 01.04.2021.
//

import Foundation

struct Card: Hashable {

    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifireNumber = 0
    
    private static func identifireGenerator() -> Int {
        identifireNumber += 1
        return identifireNumber
    }
    
    init() {
        self.identifier = Card.identifireGenerator()
    }
}
