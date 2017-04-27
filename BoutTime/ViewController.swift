//
//  ViewController.swift
//  BoutTime
//
//  Created by Jose Portuondo-Dember on 4/27/17.
//  Copyright © 2017 Jose Portuondo-Dember. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let newQuizlet = generateQuizlet()
        var quizletCorrectlyOrdered = checkQuizletOrder(newQuizlet)
        
        print(newQuizlet)
        print("\(quizletCorrectlyOrdered)")
        
        let sampleCorrectQuizlet = [mamiBirthday, papiBirthday, mcpBirthday, myBirthday]
        quizletCorrectlyOrdered = checkQuizletOrder(sampleCorrectQuizlet)
        
        print(sampleCorrectQuizlet)
        print("\(quizletCorrectlyOrdered)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

