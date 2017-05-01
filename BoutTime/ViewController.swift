//
//  ViewController.swift
//  BoutTime
//
//  Created by Jose Portuondo-Dember on 4/27/17.
//  Copyright © 2017 Jose Portuondo-Dember. All rights reserved.
//

import UIKit
var itemsAreCorrectlyOrdered: Bool = false

enum CounterButtons {
    case counter
    case wrongAnswer
    case rightAnswer
}

enum Instructions {
    case shake
    case moreInfo
    case blank
}






class ViewController: UIViewController {
    //Buttons and Labels are numbered from top to bottom as displayed on UI
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var downButton1: UIButton!
    @IBOutlet weak var downButton2: UIButton!
    @IBOutlet weak var downButton3: UIButton!
    @IBOutlet weak var upButton1: UIButton!
    @IBOutlet weak var upButton2: UIButton!
    @IBOutlet weak var upButton3: UIButton!
    @IBOutlet weak var failNextRoundButton: UIButton!
    @IBOutlet weak var correctNextRoundButton: UIButton!
    @IBOutlet weak var countdownLabel: UILabel!
    @IBOutlet weak var instructionLabel: UILabel!
    
    
    var quizlet: [HistoricEvent] = []
    var roundCounter = 0
    
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            checkForCorrectEventOrder()
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        startNewGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayQuizlet() {
        //assigning Historic Events to Variable
        let eventOne = quizletList[0]
        let eventTwo = quizletList[1]
        let eventThree = quizletList[2]
        let eventFour = quizletList[3]
        
        
        //Displaying the quizlet
        labelOne.text = eventOne.fact
        labelTwo.text = eventTwo.fact
        labelThree.text = eventThree.fact
        labelFour.text = eventFour.fact
        
        }

    
    @IBAction func moveItem(_ sender: UIButton) {
        switch sender {
        case downButton1: moveItemDownOne(from: 0)
        case downButton2: moveItemDownOne(from: 1)
        case downButton3: moveItemDownOne(from: 2)
        case upButton1: moveItemUpOne(from: 1)
        case upButton2: moveItemUpOne(from: 2)
        case upButton3: moveItemUpOne(from: 3)
        default:
            print("Oh my...")
        }
        
        displayQuizlet()
        
        
    }
    
    @IBAction func nextRound() {
        beginNextRound()
    }
    
    func changeCounterDisplayTo(_ displayItem: CounterButtons) {
        switch displayItem {
        case .counter: countdownLabel.isHidden = false; failNextRoundButton.isHidden = true; correctNextRoundButton.isHidden = true; changeInstructionsTo(.shake)
        case .rightAnswer: countdownLabel.isHidden = true; failNextRoundButton.isHidden = true; correctNextRoundButton.isHidden = false; changeInstructionsTo(.blank)
        case .wrongAnswer: countdownLabel.isHidden = true; correctNextRoundButton.isHidden = true; failNextRoundButton.isHidden = false; changeInstructionsTo(.blank)
        }
    }
    
    func changeInstructionsTo(_ instructions: Instructions) {
        switch instructions {
        case .shake: instructionLabel.text = "Shake to complete"
        case .blank: instructionLabel.text = ""
        case .moreInfo: instructionLabel.text = "Tap events to learn more"
        }
    }

    ///check to see if items in quizlet are correctly ordered
    func checkForCorrectEventOrder() {
        let firstItem = quizletList[0]
        let secondItem = quizletList[1]
        let thirdItem = quizletList[2]
        let fourthItem = quizletList[3]
        
        if (firstItem.indexDate < secondItem.indexDate && secondItem.indexDate < thirdItem.indexDate && thirdItem.indexDate < fourthItem.indexDate) {
            changeCounterDisplayTo(.rightAnswer)
        } else {
            changeCounterDisplayTo(.wrongAnswer)
        }
    }
    func startNewGame() {
        resetQuizlet()
        generateQuizlet()
        displayQuizlet()
        changeCounterDisplayTo(.counter)
    }
    func beginNextRound() {
        roundCounter += 1
        resetQuizlet()
        generateQuizlet()
        displayQuizlet()
        changeCounterDisplayTo(.counter)
    }
    
    
    
    
    
    
    
    

}

