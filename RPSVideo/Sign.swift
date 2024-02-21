//
//  Sign.swift
//  RPSVideo
//
//  Created by Geraldine Jones on 2/20/24.
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
            return "👊🏾"
        case .paper:
            return "🤚🏾"
        case .scissors:
            return "✌🏾"
            
        }//switch
    }//computed property
    
    
    
    // instance method
    func gameState (against opponentSign: Sign) -> GameState {
        if self == opponentSign {
            return .draw
        }//end if
        switch self {
        case .rock:
            if opponentSign == .scissors {
                return .win
            }
        case .paper:
            if opponentSign == .rock {
                return .win
            }
        case .scissors:
            if opponentSign == .paper {
                return .win
            }//end of if
        }//switch
            return .lose
        }//func
        
    } //enum
    

