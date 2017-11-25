//
//  AddHourlyEmployee.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/2/28.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class AddHourlyEmployee:AddEmployeeTransation {
    private let hourlyRate: Double
    
    init(empid: Int, name: String, address: String, hourlyRate: Double) {
        self.hourlyRate = hourlyRate
        super.init(empid: empid, name: name, address: address)
    }
    
    override func getClassification() -> PaymentClassification? {
        return HourlyClassification(hourlyRate: hourlyRate)
    }
    
    override func getSchedule() -> PaymentSchedule? {
        return WeeklySchedule()
    }
}
