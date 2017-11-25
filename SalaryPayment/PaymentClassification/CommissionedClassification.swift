//
//  CommissionedClassification.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/1.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class CommissionClassification: PaymentClassification {
    
    private var salary: Double
    private var commissionRate: Double
    private var salaryReceipt: SalaryReceipt?
    
    init(salary: Double, commissionRate: Double) {
        self.salary = salary
        self.commissionRate = commissionRate
    }
    
    func setSalaryReceipt(sr: SalaryReceipt) {
        self.salaryReceipt = sr
    }
    
    func getSalaryReceipt() -> SalaryReceipt? {
        return salaryReceipt
    }
    
    func getSalary() -> Double {
        return salary
    }
    
    func getCommissionRate() -> Double {
        return commissionRate
    }
    
    func calculatePay(paycheck: Paycheck) -> Double {
        fatalError()
    }
}
