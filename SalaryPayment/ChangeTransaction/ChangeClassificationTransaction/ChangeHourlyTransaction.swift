//
//  ChangeHourlyTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/8.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation


class ChangeHourlyTransaction: ChangeClassificationTransaction {
    private let hourlyRate: Double
    
    init(empid: Int, hourlyRate: Double) {
        self.hourlyRate = hourlyRate
        super.init(empid: empid)
    }
    
    override func getSchedule() -> PaymentSchedule {
        return WeeklySchedule()
    }
    
    override func getClassification() -> PaymentClassification {
        return HourlyClassification(hourlyRate: hourlyRate)
    }
}
