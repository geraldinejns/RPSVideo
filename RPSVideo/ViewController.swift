//
//  ViewController.swift
//  RPSVideo
//
//  Created by Geraldine Jones on 2/20/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signLabel: UILabel!
   
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var rockButton: UIButton!
    
    @IBOutlet weak var paperButton: UIButton!
    
    @IBOutlet weak var scissorsButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var playAgain: UIButton!
    
    @IBOutlet weak var scissorsChosen: UIButton!
    
    @IBAction func paperChosen(_ sender: Any) {
        play(userSign: .paper)
    }
    
    @IBAction func scissorsChosen(_ sender: Any) {
        play(userSign: .scissors)
    }
    
    @IBAction func playAgain(_ sender: Any) {
        updateUI(forState: .start)
    }
    
    @IBAction func rockChosen(_ sender: Any) {
        play(userSign: .rock)
    }
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI(forState: .start)
    }
    
    func updateUI (forState state:GameState) {
        statusLabel.text = state.status
        switch state {
        case .start:
            view.backgroundColor = .gray
            signLabel.text = "🤖"
            playAgainButton.isHidden = true
            rockButton.isHidden = false
            paperButton.isHidden = false
            scissorsButton.isHidden = false
            
            rockButton.isEnabled = true
            paperButton.isEnabled = true
            scissorsButton.isEnabled = true
            
        case.win:
            view.backgroundColor = state.color
        case .lose:
            view.backgroundColor = state.color
        case .draw:
            view.backgroundColor = state.color
            
        }//switch
    }//updateUI
    
    func play(userSign: Sign) {
        
        let computerSign = randomSign()
        
        let gameState = userSign.gameState(against: computerSign)
        updateUI(forState: gameState)
        
        signLabel.text = computerSign.emoji
        
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        
        rockButton.isHidden = true
        paperButton.isHidden = true
        scissorsButton.isHidden = true
        
        playAgainButton.isHidden = false
        
        switch userSign {
        case .rock:
            rockButton.isHidden = false
        case .paper:
            paperButton.isHidden = false
        case .scissors:
            scissorsButton.isHidden = false
        }//switch
        
    }//play


}//ViewController

