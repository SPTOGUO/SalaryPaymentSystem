//
//  ChangeCommissonTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/9.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation


class ChangeCommissonTransaction: ChangeClassificationTransaction {
    private let salary: Double
    private let commissionRate: Double
    
    init(empid: Int, salary: Double, commissionRate: Double) {
        self.salary = salary
        self.commissionRate = commissionRate
        super.init(empid: empid)
    }
    
    override func getClassification() -> PaymentClassification? {
        return CommissionClassification(salary: salary, commissionRate: commissionRate)
    }
    
    override func getSchedule() -> PaymentSchedule? {
        return WeeklySchedule()
    }
}
