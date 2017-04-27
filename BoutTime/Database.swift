//
//  Database.swift
//  BoutTime
//
//  Created by Jose Portuondo-Dember on 4/27/17.
//  Copyright © 2017 Jose Portuondo-Dember. All rights reserved.
//

import Foundation

struct HistoricEvent {
    let yearMonthYYYYMM: Int
    let fact: String
    }

let myBirthday = HistoricEvent(yearMonthYYYYMM: 198307, fact: "José was born")

let mcpBirthday = HistoricEvent(yearMonthYYYYMM: 198106, fact: "Maria was born")

let joshBirthday = HistoricEvent(yearMonthYYYYMM: 198308, fact: "Josh was born")

let mamiBirthday = HistoricEvent(yearMonthYYYYMM: 195004, fact: "Mami was born")

let papiBirthday = HistoricEvent(yearMonthYYYYMM: 195303, fact: "Papi was born")

let chuppiesBirthday = HistoricEvent(yearMonthYYYYMM: 200801, fact: "Chuppies was born")

let masterDatabase: [HistoricEvent] = [myBirthday, mcpBirthday, joshBirthday, mamiBirthday, papiBirthday, chuppiesBirthday]

