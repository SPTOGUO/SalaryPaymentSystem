//
//  HourlyClassification.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/2/28.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation


class HourlyClassification: PaymentClassification {
    private let hourlyRate: Double
    private var timeCards: [Date: TimeCard]
    
    init(hourlyRate: Double) {
        self.hourlyRate = hourlyRate
        self.timeCards = [Date: TimeCard]()
    }
    
    func addTimeCard(timeCard: TimeCard) {
        self.timeCards[timeCard.getDate()] = timeCard
    }
    
    func getTimeCard(date: Date) -> TimeCard? {
        return timeCards[date]
    }
    
    func getHourlyRate() -> Double{
        return hourlyRate
    }
    
    func calculatePay(paycheck: Paycheck) -> Double {
        var totalPay = 0.0
        for (_, value) in timeCards {
            if value.getDate().isInPayPeriod(paycheck: paycheck) {
                totalPay += calculatePayForTimeCard(tc: value)
            }
        }
        return totalPay
    }
        
    func calculatePayForTimeCard(tc: TimeCard) -> Double{
        var hour = tc.getHours()
        var overtime = 0.0
        if hour > 8 {
            overtime = hour - 8
            hour = 8
        }
        return (hour + overtime * 1.5 ) * hourlyRate
    }
}
