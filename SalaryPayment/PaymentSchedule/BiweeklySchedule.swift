//
//  BiweeklySchedule.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/1.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class BiweeklySchedule: PaymentSchedule{
    init() {
    }
    
    func isPayDate(date: Date) -> Bool {
        if date.weekOfYear % 2 == 0 {
            return true
        }
        return false
    }
    
    func getStartDate(payDate: Date) -> Date {
        return payDate.add(TimeChunk(seconds: 0, minutes: 0, hours: 0, days: -11, weeks: 0, months: 0, years: 0))
    }
}
