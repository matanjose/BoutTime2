//
//  ViewController.swift
//  BoutTime
//
//  Created by Jose Portuondo-Dember on 4/27/17.
//  Copyright © 2017 Jose Portuondo-Dember. All rights reserved.
//

import UIKit

enum Buttons {
    case downButton1
    case downButton2
    case downButton3
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
    
    
    
    var quizlet: [HistoricEvent] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //displayQuizlet()
       displayQuizlet()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayQuizlet() {
        //Establish a fresh quizlet array
        resetQuizlet()
        generateQuizlet()
        
        //assigning Historic Events to Variable
        var eventOne = quizletList[0]
        var eventTwo = quizletList[1]
        var eventThree = quizletList[2]
        var eventFour = quizletList[3]
        
        
        //Displaying the quizlet
        labelOne.text = eventOne.fact
        labelTwo.text = eventTwo.fact
        labelThree.text = eventThree.fact
        labelFour.text = eventFour.fact
        
    }
 
    
    @IBAction func downButton(_ sender: UIButton) {
        switch sender {
        case downButton1: print(labelOne.text!)
        case downButton2: print(labelTwo.text!)
        case downButton3: print(labelThree.text!)
        default:
            print("Oh my...")
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    

}

