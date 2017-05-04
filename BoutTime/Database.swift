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
    let presidentNumber: Int
    let moreInfoURL: String
    var hashValue: Int {return year ^ month ^ day}
    var indexDate: (Int, Int, Int) {return (year, month, day)
    }
    
    
   static func ==(lhs: HistoricEvent, rhs: HistoricEvent) ->Bool {
        return lhs.fact == rhs.fact && lhs.day == rhs.day && lhs.month == rhs.month && lhs.year == rhs.year && lhs.moreInfoURL == rhs.moreInfoURL && lhs.hashValue == rhs.hashValue && lhs.indexDate == rhs.indexDate
    }
}

let masterDatabase: [HistoricEvent] = [
    p1, p2, p3, p4, p5, p6, p7, p8, p9, p10,
    p11, p12, p13, p14, p15, p16, p17, p18, p19, p20,
    p21, p22, p23, p24, p25, p26, p27, p28, p29, p30,
    p31, p32, p33, p34, p35, p36, p37, p38, p39, p40,
    p41, p42, p43, p44, p45
]

let p1 = HistoricEvent(day: 30, month: 4, year: 1789, fact: "George Washington", presidentNumber: 1, moreInfoURL: "https://en.wikipedia.org/wiki/George_Washington")

let p2 = HistoricEvent(day: 4, month: 3, year: 1797, fact: "John Adams", presidentNumber: 2, moreInfoURL: "https://en.wikipedia.org/wiki/John_Adams")

let p3 = HistoricEvent(day: 4, month: 3, year: 1801, fact: "Thomas Jefferson", presidentNumber: 3, moreInfoURL: "https://en.wikipedia.org/wiki/Thomas_Jefferson")

let p4 = HistoricEvent(day: 4, month: 3, year: 1809, fact: "James Madison", presidentNumber: 4, moreInfoURL: "https://en.wikipedia.org/wiki/James_Madison")

let p5 = HistoricEvent(day: 4, month: 3, year: 1817, fact: "James Monroe", presidentNumber: 5, moreInfoURL: "https://en.wikipedia.org/wiki/James_Monroe")

let p6 = HistoricEvent(day: 4, month: 3, year: 1825, fact: "John Quincy Adams", presidentNumber: 6, moreInfoURL: "https://en.wikipedia.org/wiki/John_Quincy_Adams")

let p7 = HistoricEvent(day: 4, month: 3, year: 1829, fact: "Andrew Jackson", presidentNumber: 7, moreInfoURL: "https://en.wikipedia.org/wiki/Andrew_Jackson")

let p8 = HistoricEvent(day: 4, month: 3, year: 1837, fact: "Martin Van Buren", presidentNumber: 8, moreInfoURL: "https://en.wikipedia.org/wiki/Martin_Van_Buren")

let p9 = HistoricEvent(day: 4, month: 3, year: 1841, fact: "William Henry Harrison", presidentNumber: 9, moreInfoURL: "https://en.wikipedia.org/wiki/William_Henry_Harrison")

let p10 = HistoricEvent(day: 6, month: 4, year: 1841, fact: "John Tyler", presidentNumber: 10,  moreInfoURL: "https://en.wikipedia.org/wiki/John_Tyler")

let p11 = HistoricEvent(day: 4, month: 3, year: 1845, fact: "James Knox Polk", presidentNumber: 11, moreInfoURL: "https://en.wikipedia.org/wiki/James_K._Polk")

let p12 = HistoricEvent(day: 5, month: 3, year: 1849, fact: "Zachary Taylor", presidentNumber: 12, moreInfoURL: "https://en.wikipedia.org/wiki/Zachary_Taylor")

let p13 = HistoricEvent(day: 10, month: 7, year: 1850, fact: "Millard Fillmore", presidentNumber: 13, moreInfoURL: "https://en.wikipedia.org/wiki/Millard_Fillmore")

let p14 = HistoricEvent(day: 4, month: 3, year: 1853, fact: "Franklin Pierce", presidentNumber: 14, moreInfoURL: "https://en.wikipedia.org/wiki/Franklin_Pierce")

let p15 = HistoricEvent(day: 4, month: 3, year: 1857, fact: "James Buchanan", presidentNumber: 15, moreInfoURL: "https://en.wikipedia.org/wiki/James_Buchanan")

let p16 = HistoricEvent(day: 4, month: 3, year: 1861, fact: "Abraham Lincoln", presidentNumber: 16, moreInfoURL: "https://en.wikipedia.org/wiki/Abraham_Lincoln")

let p17 = HistoricEvent(day: 15, month: 4, year: 1865, fact: "Andrew Johnson", presidentNumber: 17, moreInfoURL: "https://en.wikipedia.org/wiki/Andrew_Johnson")

let p18 = HistoricEvent(day: 4, month: 3, year: 1869, fact: "Ulysses S. Grant", presidentNumber: 18, moreInfoURL: "https://en.wikipedia.org/wiki/Ulysses_S._Grant")

let p19 = HistoricEvent(day: 5, month: 3, year: 1877, fact: "Rutherford B. Hayes", presidentNumber: 19, moreInfoURL: "https://en.wikipedia.org/wiki/Rutherford_B._Hayes")

let p20 = HistoricEvent(day: 4, month: 3, year: 1881, fact: "James A. Garfield", presidentNumber: 20, moreInfoURL: "https://en.wikipedia.org/wiki/James_A._Garfield")

let p21 = HistoricEvent(day: 20, month: 9, year: 1881, fact: "Chester Arthur", presidentNumber: 21, moreInfoURL: "https://en.wikipedia.org/wiki/Chester_A._Arthur")

let p22 = HistoricEvent(day: 4, month: 3, year: 1885, fact: "Grover Cleveland(I)", presidentNumber: 22, moreInfoURL: "https://en.wikipedia.org/wiki/Grover_Cleveland")

let p23 = HistoricEvent(day: 4, month: 3, year: 1889, fact: "Benjamin Harrison", presidentNumber: 23, moreInfoURL: "https://en.wikipedia.org/wiki/Benjamin_Harrison")

let p24 = HistoricEvent(day: 4, month: 3, year: 1893, fact: "Grover Cleveland(II)", presidentNumber: 24, moreInfoURL: "https://en.wikipedia.org/wiki/Grover_Cleveland")

let p25 = HistoricEvent(day: 4, month: 3, year: 1897, fact: "William McKinley", presidentNumber: 25, moreInfoURL: "https://en.wikipedia.org/wiki/William_McKinley")

let p26 = HistoricEvent(day: 14, month: 9, year: 1901, fact: "Theodore Roosevelt", presidentNumber: 26, moreInfoURL: "https://en.wikipedia.org/wiki/Theodore_Roosevelt")

let p27 = HistoricEvent(day: 4, month: 3, year: 1909, fact: "William Howard Taft", presidentNumber: 27, moreInfoURL: "https://en.wikipedia.org/wiki/William_Howard_Taft")

let p28 = HistoricEvent(day: 4, month: 3, year: 1913, fact: "Woodrow Wilson", presidentNumber: 28, moreInfoURL: "https://en.wikipedia.org/wiki/Woodrow_Wilson")

let p29 = HistoricEvent(day: 4, month: 3, year: 1921, fact: "Warren G. Harding", presidentNumber: 29, moreInfoURL: "https://en.wikipedia.org/wiki/Warren_G._Harding")

let p30 = HistoricEvent(day: 3, month: 8, year: 1923, fact: "Calvin Coolidge", presidentNumber: 30, moreInfoURL: "https://en.wikipedia.org/wiki/Calvin_Coolidge")

let p31 = HistoricEvent(day: 4, month: 3, year: 1929, fact: "Herbert Hoover", presidentNumber: 31, moreInfoURL: "https://en.wikipedia.org/wiki/Herbert_Hoover")

let p32 = HistoricEvent(day: 4, month: 3, year: 1933, fact: "Franklin D. Roosevelt", presidentNumber: 32, moreInfoURL: "https://en.wikipedia.org/wiki/Franklin_D._Roosevelt")

let p33 = HistoricEvent(day: 12, month: 4, year: 1945, fact: "Harry S. Truman", presidentNumber: 33, moreInfoURL: "https://en.wikipedia.org/wiki/Harry_S._Truman")

let p34 = HistoricEvent(day: 20, month: 1, year: 1953, fact: "Dwight D. Eisenhower", presidentNumber: 34, moreInfoURL: "https://en.wikipedia.org/wiki/Dwight_D._Eisenhower")

let p35 = HistoricEvent(day: 20, month: 1, year: 1961, fact: "John F. Kennedy", presidentNumber: 35, moreInfoURL: "https://en.wikipedia.org/wiki/John_F._Kennedy")

let p36 = HistoricEvent(day: 22, month: 11, year: 1963, fact: "Lyndon B. Johnson", presidentNumber: 36, moreInfoURL: "https://en.wikipedia.org/wiki/Lyndon_B._Johnson")

let p37 = HistoricEvent(day: 21, month: 1, year: 1969, fact: "Richard M. Nixon", presidentNumber: 37, moreInfoURL: "https://en.wikipedia.org/wiki/Richard_Nixon")

let p38  = HistoricEvent(day: 9, month: 8, year: 1974, fact:
    "Gerald T. Ford", presidentNumber: 38, moreInfoURL: "https://en.wikipedia.org/wiki/Gerald_Ford")

let p39 = HistoricEvent(day: 20, month: 1, year: 1977, fact: "Jimmy Carter", presidentNumber: 39, moreInfoURL: "https://en.wikipedia.org/wiki/Jimmy_Carter")

let p40 = HistoricEvent(day: 20, month: 1, year: 1981, fact: "Ronald Reagan", presidentNumber: 40, moreInfoURL: "https://en.wikipedia.org/wiki/Ronald_Reagan")

let p41 = HistoricEvent(day: 20, month: 1, year: 1989, fact: "George H.W. Bush", presidentNumber: 41, moreInfoURL: "https://en.wikipedia.org/wiki/George_H._W._Bush")

let p42 = HistoricEvent(day: 20, month: 1, year: 1993, fact: "William J. Clinton", presidentNumber: 42, moreInfoURL: "https://en.wikipedia.org/wiki/Bill_Clinton")

let p43 = HistoricEvent(day: 20, month: 1, year: 2001, fact: "George W. Bush", presidentNumber: 43, moreInfoURL: "https://en.wikipedia.org/wiki/George_W._Bush")

let p44 = HistoricEvent(day: 20, month: 1, year: 2009, fact: "Barack Obama", presidentNumber: 44, moreInfoURL: "https://en.wikipedia.org/wiki/Barack_Obama")

let p45 = HistoricEvent(day: 20, month: 1, year: 2017, fact: "Donald J. Trump", presidentNumber: 45, moreInfoURL: "https://en.wikipedia.org/wiki/Donald_Trump")
