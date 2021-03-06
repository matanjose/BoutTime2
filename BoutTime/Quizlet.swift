//
//  Quizlet.swift
//  BoutTime
//
//  Created by Jose Portuondo-Dember on 4/27/17.
//  Copyright © 2017 Jose Portuondo-Dember. All rights reserved.
//
import GameKit

var quizletList = [HistoricEvent]()

///Get new quizlet 
func generateQuizlet() {
    
    var randomQuestionSet = Set<HistoricEvent>()
    randomQuestionSet.removeAll()
    quizletList.removeAll()
    
    for _ in masterDatabase {
        while randomQuestionSet.count < 4 {
            let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: masterDatabase.count)
            
            randomQuestionSet.insert(masterDatabase[randomNumber])
        }
    }
    
    for item in randomQuestionSet {
        quizletList.append(item)
    }
    
    randomQuestionSet.removeAll()
}

///Creates an empty Quizlet to be filled again
func resetQuizlet() {
    
    quizletList.removeAll()
}



func moveItemDownOne(from initialIndex: Int) {
    let sourceIndex = initialIndex
    let targetIndex = initialIndex + 1
    let itemToMove = quizletList.remove(at: sourceIndex)
    quizletList.insert(itemToMove, at: targetIndex)
}

func moveItemUpOne(from initialIndex: Int) {
    let sourceIndex = initialIndex
    let targetIndex = initialIndex - 1
    let itemToMove = quizletList.remove(at: sourceIndex)
    quizletList.insert(itemToMove, at: targetIndex)
}


