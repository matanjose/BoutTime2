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

let p1 = HistoricEvent(day: 30, month: 4, year: 1789, fact: "George Washington", moreInfoURL: "https://en.wikipedia.org/wiki/George_Washington")

let p2 = HistoricEvent(day: 4, month: 3, year: 1797, fact: "John Adams", moreInfoURL: "https://en.wikipedia.org/wiki/John_Adams")

let p3 = HistoricEvent(day: 4, month: 3, year: 1801, fact: "Thomas Jefferson", moreInfoURL: "https://en.wikipedia.org/wiki/Thomas_Jefferson")

let p4 = HistoricEvent(day: 4, month: 3, year: 1809, fact: "James Madison", moreInfoURL: "https://en.wikipedia.org/wiki/James_Madison")

let p5 = HistoricEvent(day: 4, month: 3, year: 1817, fact: "James Monroe", moreInfoURL: "https://en.wikipedia.org/wiki/James_Monroe")

let p6 = HistoricEvent(day: 4, month: 3, year: 1825, fact: "John Quincy Adams", moreInfoURL: "https://en.wikipedia.org/wiki/John_Quincy_Adams")

let p7 = HistoricEvent(day: 4, month: 3, year: 1829, fact: "Andrew Jackson", moreInfoURL: "https://en.wikipedia.org/wiki/Andrew_Jackson")

let p8 = HistoricEvent(day: 4, month: 3, year: 1837, fact: "Martin Van Buren", moreInfoURL: "https://en.wikipedia.org/wiki/Martin_Van_Buren")

let p9 = HistoricEvent(day: 4, month: 3, year: 1841, fact: "William Henry Harrison", moreInfoURL: "https://en.wikipedia.org/wiki/William_Henry_Harrison")

let p10 = HistoricEvent(day: 6, month: 4, year: 1841, fact: "John Tyler", moreInfoURL: "https://en.wikipedia.org/wiki/John_Tyler")

let p11 = HistoricEvent(day: 4, month: 3, year: 1845, fact: "James Knox Polk", moreInfoURL: "https://en.wikipedia.org/wiki/James_K._Polk")

let p12 = HistoricEvent(day: 5, month: 3, year: 1849, fact: "Zachary Taylor", moreInfoURL: "https://en.wikipedia.org/wiki/Zachary_Taylor")

let p13 = HistoricEvent(day: 10, month: 7, year: 1850, fact: "Millard Fillmore", moreInfoURL: "https://en.wikipedia.org/wiki/Millard_Fillmore")

let p14 = HistoricEvent(day: 4, month: 3, year: 1853, fact: "Franklin Pierce", moreInfoURL: "https://en.wikipedia.org/wiki/Franklin_Pierce")

let p15 = HistoricEvent(day: 4, month: 3, year: 1857, fact: "James Buchanan", moreInfoURL: "https://en.wikipedia.org/wiki/James_Buchanan")

let p16 = HistoricEvent(day: 4, month: 3, year: 1861, fact: "Abraham Lincoln", moreInfoURL: "https://en.wikipedia.org/wiki/Abraham_Lincoln")

let p17 = HistoricEvent(day: 15, month: 4, year: 1865, fact: "Andrew Johnson", moreInfoURL: "https://en.wikipedia.org/wiki/Andrew_Johnson")

let p18 = HistoricEvent(day: 4, month: 3, year: 1869, fact: "Ulysses S. Grant", moreInfoURL: "https://en.wikipedia.org/wiki/Ulysses_S._Grant")

let p19 = HistoricEvent(day: 5, month: 3, year: 1877, fact: "Rutherford B. Hayes", moreInfoURL: "https://en.wikipedia.org/wiki/Rutherford_B._Hayes")

let p20 = HistoricEvent(day: 4, month: 3, year: 1881, fact: "James A. Garfield", moreInfoURL: "https://en.wikipedia.org/wiki/James_A._Garfield")

let p21 = HistoricEvent(day: 20, month: 9, year: 1881, fact: "Chester Arthur", moreInfoURL: "https://en.wikipedia.org/wiki/Chester_A._Arthur")

let p22 = HistoricEvent(day: 4, month: 3, year: 1885, fact: "Grover Cleveland(1)", moreInfoURL: "https://en.wikipedia.org/wiki/Grover_Cleveland")

let p23 = HistoricEvent(day: 4, month: 3, year: 1889, fact: "Benjamin Harrison", moreInfoURL: "https://en.wikipedia.org/wiki/Benjamin_Harrison")

let p24 = HistoricEvent(day: 4, month: 3, year: 1893, fact: "Grover Cleveland(A)", moreInfoURL: "https://en.wikipedia.org/wiki/Grover_Cleveland")

let p25 = HistoricEvent(day: 4, month: 3, year: 1897, fact: "William McKinley", moreInfoURL: "https://en.wikipedia.org/wiki/William_McKinley")

let p26 = HistoricEvent(day: 14, month: 9, year: 1901, fact: "Theodore Roosevelt", moreInfoURL: "https://en.wikipedia.org/wiki/Theodore_Roosevelt")

let p27 = HistoricEvent(day: 4, month: 3, year: 1909, fact: "William Howard Taft", moreInfoURL: "https://en.wikipedia.org/wiki/William_Howard_Taft")

let p28 = HistoricEvent(day: 4, month: 3, year: 1913, fact: "Woodrow Wilson", moreInfoURL: "https://en.wikipedia.org/wiki/Woodrow_Wilson")

let p29 = HistoricEvent(day: 4, month: 3, year: 1921, fact: "Warren G. Harding", moreInfoURL: "https://en.wikipedia.org/wiki/Warren_G._Harding")

let p30 = HistoricEvent(day: 3, month: 8, year: 1923, fact: "Calvin Coolidge", moreInfoURL: "https://en.wikipedia.org/wiki/Calvin_Coolidge")

let p31 = HistoricEvent(day: 4, month: 3, year: 1929, fact: "Herbert Hoover", moreInfoURL: "https://en.wikipedia.org/wiki/Herbert_Hoover")

let p32 = HistoricEvent(day: 4, month: 3, year: 1933, fact: "Franklin D. Roosevelt", moreInfoURL: "https://en.wikipedia.org/wiki/Franklin_D._Roosevelt")

let p33 = HistoricEvent(day: 12, month: 4, year: 1945, fact: "Harry S. Truman", moreInfoURL: "https://en.wikipedia.org/wiki/Harry_S._Truman")

let p34 = HistoricEvent(day: 20, month: 1, year: 1953, fact: "Dwight D. Eisenhower", moreInfoURL: "https://en.wikipedia.org/wiki/Dwight_D._Eisenhower")

let p35 = HistoricEvent(day: 20, month: 1, year: 1961, fact: "John F. Kennedy", moreInfoURL: "https://en.wikipedia.org/wiki/John_F._Kennedy")

let p36 = HistoricEvent(day: 22, month: 11, year: 1963, fact: "Lyndon B. Johnson", moreInfoURL: "https://en.wikipedia.org/wiki/Lyndon_B._Johnson")

let p37 = HistoricEvent(day: 21, month: 1, year: 1969, fact: "Richard M. Nixon", moreInfoURL: "https://en.wikipedia.org/wiki/Richard_Nixon")

let p38  = HistoricEvent(day: 9, month: 8, year: 1974, fact:
    "Gerald R. Ford", moreInfoURL: "https://en.wikipedia.org/wiki/Gerald_Ford")

let p39 = HistoricEvent(day: 20, month: 1, year: 1977, fact: "Jimmy Carter", moreInfoURL: "https://en.wikipedia.org/wiki/Jimmy_Carter")

let p40 = HistoricEvent(day: 20, month: 1, year: 1981, fact: "Ronald Reagan", moreInfoURL: "https://en.wikipedia.org/wiki/Ronald_Reagan")

let p41 = HistoricEvent(day: 20, month: 1, year: 1989, fact: "George H.W. Bush", moreInfoURL: "https://en.wikipedia.org/wiki/George_H._W._Bush")

let p42 = HistoricEvent(day: 20, month: 1, year: 1993, fact: "William J. Clinton", moreInfoURL: "https://en.wikipedia.org/wiki/Bill_Clinton")

let p43 = HistoricEvent(day: 20, month: 1, year: 2001, fact: "George W. Bush", moreInfoURL: "https://en.wikipedia.org/wiki/George_W._Bush")

let p44 = HistoricEvent(day: 20, month: 1, year: 2009, fact: "Barack Obama", moreInfoURL: "https://en.wikipedia.org/wiki/Barack_Obama")

let p45 = HistoricEvent(day: 20, month: 1, year: 2017, fact: "Donald J. Trump", moreInfoURL: "https://en.wikipedia.org/wiki/Donald_Trump")
