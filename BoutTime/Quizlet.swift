//
//  Quizlet.swift
//  BoutTime
//
//  Created by Jose Portuondo-Dember on 4/27/17.
//  Copyright © 2017 Jose Portuondo-Dember. All rights reserved.
//

import Foundation
import GameKit

var quizlet: [HistoricEvent] = []
var initialDatabase = masterDatabase

func generateQuizlet() -> [HistoricEvent] {
    while quizlet.count < 4 {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: initialDatabase.count)
        let itemToApend = initialDatabase[randomNumber]
        quizlet.append(itemToApend)
        initialDatabase.remove(at: randomNumber)
    }
    return quizlet
}

func resetQuizlet() -> [HistoricEvent] {
    quizlet = []
    return quizlet
}

func checkQuizletOrder(_ quizlet: [HistoricEvent]) -> Bool {
    
    let referenceOne = quizlet[0].yearMonthYYYYMM
    let referenceTwo = quizlet[1].yearMonthYYYYMM
    let referenceThree = quizlet[2].yearMonthYYYYMM
    let referenceFour = quizlet[3].yearMonthYYYYMM
    
    
    if referenceOne < referenceTwo && referenceTwo < referenceThree && referenceThree < referenceFour {
        return true
    } else {
        return false
    }
}


