//
//  Database.swift
//  BoutTime
//
//  Created by Jose Portuondo-Dember on 4/27/17.
//  Copyright © 2017 Jose Portuondo-Dember. All rights reserved.
//

import Foundation
import GameKit

struct HistoricEvent: Hashable, Equatable{
    
    let day: Int
    let month: Int
    let year: Int
    let fact: String
    var hashValue: Int {return year ^ month ^ day}
    var indexDate: (Int, Int, Int) {return (year, month, day)}
    
    
   static func ==(lhs: HistoricEvent, rhs: HistoricEvent) ->Bool {
        return lhs.fact == rhs.fact && lhs.day == rhs.day && lhs.month == rhs.month && lhs.year == rhs.year && lhs.hashValue == rhs.hashValue
    }
}

let masterDatabase: [HistoricEvent] = [myBirthday, mcpBirthday, joshBirthday, mamiBirthday, papiBirthday, chuppiesBirthday]

let myBirthday = HistoricEvent(day: 2, month: 7, year: 1983, fact: "José was born")

let mcpBirthday = HistoricEvent(day: 9, month: 6, year: 1981, fact: "Maria Cristina was born")

let joshBirthday = HistoricEvent(day: 13, month: 8, year: 1983, fact: "Josh was born")

let mamiBirthday = HistoricEvent(day: 17, month: 4, year: 1950, fact: "Mami was born")

let papiBirthday = HistoricEvent(day: 21, month: 3, year: 1953, fact: "Papi was born")

let chuppiesBirthday = HistoricEvent(day: 1, month: 1, year: 2008, fact: "Chuppies was born")
/*
let oneEvent = HistoricEvent(yearMonthDayYYYYMMDD: 1928, fact: "The discovery of penicillin.")

let twoEvent = HistoricEvent(yearMonthDayYYYYMMDD: 1796, fact: "British doctor Edward Jenner uses cowpox virus to make the first vaccine.")

let threeEvent = HistoricEvent(yearMonthDayYYYYMMDD: 1903, fact: "The Wilbur brothers fly the first airplane in Kitty Hawk.")

let fourEvent = HistoricEvent(yearMonthDayYYYYMMDD: 1876, fact: "Alexander Graham Bell invented the telephone")

let fiveEvent = HistoricEvent(yearMonthDayYYYYMMDD: 1837, fact: "The telegraph is invented.")

let sixEvent = HistoricEvent(yearMonthDayYYYYMMDD: 1793, fact: "The invention of the cotton gin")

let sevenEvent = HistoricEvent(yearMonthDayYYYYMMDD: 1863, fact: "Pasteurization is developed in France.")

let eightEvent = HistoricEvent(yearMonthDayYYYYMMDD: 1846, fact: "Anesthesia is discovered.")

let nineEvent = HistoricEvent(yearMonthDayYYYYMMDD: 1669, fact: "Phosphorus is discovered")

let tenEvent = HistoricEvent(yearMonthDayYYYYMMDD: 1775, fact: "Magnesium is discovered.")

let elevenEvent = HistoricEvent(yearMonthDayYYYYMMDD: 1789, fact: "Uranium")
 */
