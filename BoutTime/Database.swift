//
//  Database.swift
//  BoutTime
//
//  Created by Jose Portuondo-Dember on 4/27/17.
//  Copyright © 2017 Jose Portuondo-Dember. All rights reserved.
//

import Foundation

struct HistoricEvent: Hashable, Equatable{
    let yearMonthDayYYYYMMDD: Int
    let fact: String
    var hashValue: Int {return yearMonthDayYYYYMMDD}
    
    
   static func ==(lhs: HistoricEvent, rhs: HistoricEvent) ->Bool {
        return lhs.fact == rhs.fact && lhs.yearMonthDayYYYYMMDD == rhs.yearMonthDayYYYYMMDD
    }
}

let myBirthday = HistoricEvent(yearMonthDayYYYYMMDD: 19830702, fact: "José was born")

let mcpBirthday = HistoricEvent(yearMonthDayYYYYMMDD: 19810609, fact: "Maria was born")

let joshBirthday = HistoricEvent(yearMonthDayYYYYMMDD: 19830813, fact: "Josh was born")

let mamiBirthday = HistoricEvent(yearMonthDayYYYYMMDD: 19500417, fact: "Mami was born")

let papiBirthday = HistoricEvent(yearMonthDayYYYYMMDD: 19530321, fact: "Papi was born")

let chuppiesBirthday = HistoricEvent(yearMonthDayYYYYMMDD: 20080101, fact: "Chuppies was born")

let masterDatabase: [HistoricEvent] = [myBirthday, mcpBirthday, joshBirthday, mamiBirthday, papiBirthday, chuppiesBirthday]

