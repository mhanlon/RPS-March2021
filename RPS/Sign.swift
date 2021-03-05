//
//  Sign.swift
//  RPS
//
//  Created by Matthew Hanlon on 05/03/2021.
//  Copyright © 2021 Teaching Develop in Swift. All rights reserved.
//

import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}


enum Sign {
    case rock
    case paper
    case scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "🖐"
        case .scissors:
            return "✌️"
        }
    }
    
    func compareSign(_ sign: Sign) -> GameState {
        if sign == self {
            return .draw
        }
        switch self {
        case .rock:
            // some code here
            if sign == .paper {
                return .lose
            } else {
                return .win
            }
        case .paper:
            // paper code here
            if sign == .rock {
                return .win
            } else {
                return .lose
            }
        case .scissors:
            // scissors code here
            if sign == .rock {
                return .lose
            } else {
                return .win
            }
        }
    }
}
