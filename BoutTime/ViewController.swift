//
//  ViewController.swift
//  BoutTime
//
//  Created by Jose Portuondo-Dember on 4/27/17.
//  Copyright © 2017 Jose Portuondo-Dember. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    
    var quizlet: [HistoricEvent] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        displayQuizlet()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayQuizlet() {
        //Establish a fresh quizlet array
        
        quizlet = generateQuizlet()
        var eventOne = quizlet[0]
        var eventTwo = quizlet[1]
        var eventThree = quizlet[2]
        var eventFour = quizlet[3]
        
        
        //Displaying the quizlet
        labelOne.text = eventOne.fact
        labelTwo.text = eventTwo.fact
        labelThree.text = eventThree.fact
        labelFour.text = eventFour.fact
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    

}

