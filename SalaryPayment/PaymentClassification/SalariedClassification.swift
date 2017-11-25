//
//  SalariedClassification.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/2/28.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class SalariedClassification: PaymentClassification {
    private var salary: Double
    
    init(salary: Double) {
        self.salary = salary
    }
    
    func getSalary() -> Double {
        return salary
    }
    
    func calculatePay(paycheck: Paycheck) -> Double {
        return salary
    }
}
