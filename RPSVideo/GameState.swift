//
//  GameState.swift
//  RPSVideo
//
//  Created by Geraldine Jones on 2/20/24.
//

import Foundation
import UIKit

enum GameState {
    case start
    
    case win
    
    case lose
    
    case draw
    
    var status: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors!"
        case .win:
            return "You won!"
        case .lose:
            return "You Lose!"
        case .draw:
            return "It a Draw!"
        }//switch
    }//status
    
    var color: UIColor {
        switch self {
        case .start:
            return UIColor.blue
        case .win:
            return UIColor.green
        case.lose:
            return UIColor.red
        case.draw:
            return UIColor.yellow
        
        }//switch
    }//color
}//enum
