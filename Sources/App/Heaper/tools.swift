//
//  File.swift
//  
//
//  Created by ChrisChou on 2023/2/3.
//

import Foundation

func myAge(bornYear: Int) -> Int {
    return thisYearNumber() - bornYear
}

func thisYearNumber() -> Int {
    let date = Date()
    let dateComp = Calendar.current.dateComponents([.year], from: date)
    return dateComp.year ?? 2023
}
