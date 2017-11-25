//
//  TimeCard.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/2.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation


class TimeCard {
    private let itsDate: Date!
    private let itsHours: Double!
    
    init(date: Date, hours:Double) {
        self.itsDate = date
        self.itsHours = hours
    }
    
    func getDate() -> Date {
        return itsDate
    }
    
    func getHours() -> Double {
        return itsHours
    }
}
