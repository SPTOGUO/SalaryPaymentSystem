//
//  ChangeSalaryClassificationTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/9.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class ChangeSalaryTransaction: ChangeClassificationTransaction {
    private let salary: Double
    
    init(empid: Int, salary: Double) {
        self.salary = salary
        super.init(empid: empid)
    }
    
    override func getSchedule() -> PaymentSchedule? {
        return MonthlyScheddule()
    }
    
    override func getClassification() -> PaymentClassification? {
        return SalariedClassification(salary: salary)
    }
}
