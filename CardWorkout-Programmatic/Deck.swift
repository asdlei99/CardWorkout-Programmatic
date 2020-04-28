//
//  Deck.swift
//  CardWorkout-Programmatic
//
//  Created by Juan Francisco Dorado Torres on 28/04/20.
//  Copyright © 2020 Juan Francisco Dorado Torres. All rights reserved.
//

import UIKit

struct Deck {

  static var allValues: [UIImage?] {
    return getAllCards()
  }

  static func getAllCards() -> [UIImage?] {
    let cardSymbols = ["C", "D", "H", "S"]
    var deck = [UIImage?]()
    cardSymbols.forEach { symbol in
      for value in 2...14 {
        if value == 11 {
          deck.append(UIImage(named: "J\(symbol)"))
        } else if value == 12 {
          deck.append(UIImage(named: "Q\(symbol)"))
        } else if value == 13 {
          deck.append(UIImage(named: "K\(symbol)"))
        } else if value == 14 {
          deck.append(UIImage(named: "A\(symbol)"))
        } else {
          deck.append(UIImage(named: "\(value)\(symbol)"))
        }
      }
    }

    return deck
  }
}
