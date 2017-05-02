//
//  ViewController.swift
//  BoutTime
//
//  Created by Jose Portuondo-Dember on 4/27/17.
//  Copyright © 2017 Jose Portuondo-Dember. All rights reserved.
//

import UIKit


enum CounterButtons {
    case counter
    case wrongAnswer
    case rightAnswer
    case playAgain
}

enum Instructions {
    case shake
    case moreInfo
    case blank
}

enum MainDisplay {
    case events
    case finalScore
    case splashScreen
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
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var countdownLabel: UILabel!
    @IBOutlet weak var instructionLabel: UILabel!
    @IBOutlet weak var yourScore: UILabel!
    @IBOutlet weak var finalScore: UILabel!
    @IBOutlet weak var eventStack1: UIStackView!
    @IBOutlet weak var eventStack2: UIStackView!
    @IBOutlet weak var eventStack3: UIStackView!
    @IBOutlet weak var eventStack4: UIStackView!
    @IBOutlet weak var finalScoreStack: UIStackView!
    @IBOutlet weak var gameStack: UIStackView!
    @IBOutlet weak var splashScreen: UIImageView!
    
    
    
    
    var quizlet: [HistoricEvent] = []
    var roundCounter: Int = 1
    var correctAnswers: Int = 0
    var roundsPerGame: Int = 3
    
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
        showSplashScreen()
        //  startNewGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Game Display Functions
    func showSplashScreen() {
        setMainDisplayto(.splashScreen)
    }
    func setMainDisplayto(_ display: MainDisplay) {
        switch display {
        case .events:
            eventStack1.isHidden = false
            eventStack2.isHidden = false
            eventStack3.isHidden = false
            eventStack4.isHidden = false
            finalScoreStack.isHidden = true
            gameStack.isHidden = false
            splashScreen.isHidden = true
        case .finalScore:
            eventStack1.isHidden = true
            eventStack2.isHidden = true
            eventStack3.isHidden = true
            eventStack4.isHidden = true
            finalScoreStack.isHidden = false
            gameStack.isHidden = false
            splashScreen.isHidden = true
        case .splashScreen:
            eventStack1.isHidden = true
            eventStack2.isHidden = true
            eventStack3.isHidden = true
            eventStack4.isHidden = true
            finalScoreStack.isHidden = true
            gameStack.isHidden = true
            splashScreen.isHidden = false
        }
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
    func changeCounterDisplayTo(_ displayItem: CounterButtons) {
        
        switch displayItem {
            
        case .counter:
            countdownLabel.isHidden = false
            failNextRoundButton.isHidden = true
            correctNextRoundButton.isHidden = true
            playAgainButton.isHidden = true
            changeInstructionsTo(.shake)
            
        case .rightAnswer:
            countdownLabel.isHidden = true
            failNextRoundButton.isHidden = true
            correctNextRoundButton.isHidden = false
            playAgainButton.isHidden = true
            changeInstructionsTo(.blank)
            
        case .wrongAnswer:
            countdownLabel.isHidden = true
            failNextRoundButton.isHidden = false
            correctNextRoundButton.isHidden = true
            playAgainButton.isHidden = true
            changeInstructionsTo(.blank)
            
        case .playAgain:
            countdownLabel.isHidden = true
            failNextRoundButton.isHidden = true
            correctNextRoundButton.isHidden = true
            playAgainButton.isHidden = false
            changeInstructionsTo(.blank)
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
            correctAnswers += 1
        } else {
            changeCounterDisplayTo(.wrongAnswer)
        }
    }

    //MARK: Game flow functions
    func startNewGame() {
        roundCounter = 1
        resetQuizlet()
        generateQuizlet()
        displayQuizlet()
        changeCounterDisplayTo(.counter)
        setMainDisplayto(.events)
    }
    
    func determineEndOfGame() {
        if roundCounter < roundsPerGame {
            beginNextRound()
        } else if roundCounter >= roundsPerGame{
            endGame()
        }
    }
    func beginNextRound() {
        roundCounter += 1
        resetQuizlet()
        generateQuizlet()
        displayQuizlet()
        changeCounterDisplayTo(.counter)
    }
    
    func endGame() {
        setMainDisplayto(.finalScore)
        changeCounterDisplayTo(.playAgain)
        yourScore.text = "Your Score:"
        finalScore.text = "\(correctAnswers) / \(roundsPerGame)"
    }

    //MARK: Action functions
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
    
   
    @IBAction func continuePlay(_ sender: UIButton) {
        switch sender {
        case failNextRoundButton, correctNextRoundButton:
            determineEndOfGame()
        case playAgainButton:
            startNewGame()
        default: break
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    

}

