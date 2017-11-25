//
//  MonthlySchedule.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/2/28.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class MonthlyScheddule: PaymentSchedule {
    
    init() {
    }
    
    func isLastDayOfMonth(date: Date) -> Bool{
        let m1 = date.month
        let m2 = date.add(TimeChunk(seconds: 0, minutes: 0, hours: 0, days: 1, weeks: 0, months: 0, years: 0)).month
        return m1 != m2
    }
    
    func isPayDate(date: Date) -> Bool {
        return isLastDayOfMonth(date: date)
    }
    
    func getStartDate(payDate: Date) -> Date {
        let monthDays = payDate.daysInMonth
        return payDate.add(TimeChunk(seconds: 0, minutes: 0, hours: 0, days: -monthDays, weeks: 0, months: 0, years: 0))
    }

}
