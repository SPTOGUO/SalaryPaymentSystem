//
//  WeeklySchedule.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/2/28.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class WeeklySchedule: PaymentSchedule {
    
    init() {
    }
    
    func isPayDate(date: Date) -> Bool {
        let week = date.weekday
        return week == 5
    }
    
    func getStartDate(payDate: Date) -> Date {
        return payDate.add(TimeChunk(seconds: 0, minutes: 0, hours: 0, days: -4, weeks: 0, months: 0, years: 0))
    }
}
