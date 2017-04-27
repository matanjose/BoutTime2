//
//  Database.swift
//  BoutTime
//
//  Created by Jose Portuondo-Dember on 4/27/17.
//  Copyright © 2017 Jose Portuondo-Dember. All rights reserved.
//

import Foundation

struct HistoricEvent {
    let year: Int
    let month: Int
    let fact: String
    var usedThisQuizlet: Bool
    
    }

let myBirthday = HistoricEvent(year: 1983, month: 7, fact: "I was born", usedThisQuizlet: false)

let mcpBirthday = HistoricEvent(year: 1981, month: 6, fact: "Maria was born", usedThisQuizlet: false)

let joshBirthday = HistoricEvent(year: 1983, month: 7, fact: "Josh was born", usedThisQuizlet: false)

let mamiBirthday = HistoricEvent(year: 1950, month: 4, fact: "Mami was born", usedThisQuizlet: false)

let papiBirthday = HistoricEvent(year: 1953, month: 3, fact: "Papi was born", usedThisQuizlet: false)

let chuppiesBirthday = HistoricEvent(year: 2008, month: 1, fact: "Chuppies was born", usedThisQuizlet: false)

let masterDatabase: [HistoricEvent] = [myBirthday, mcpBirthday, joshBirthday, mamiBirthday, papiBirthday, chuppiesBirthday]
