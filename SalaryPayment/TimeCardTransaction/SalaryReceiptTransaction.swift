//
//  SalaryReceiptTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/3.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class SalaryReceiptTransaction: Transaction {
    private let date: Date
    private let amount: Double
    private let empid: Int
    
    init(amount: Double, date: Date, empid: Int) {
        self.date = date
        self.amount = amount
        self.empid = empid
    }
    
    func execute() {
        
        guard let me = gPayrollDatabase.getEmployee(empid: empid) else {
            fatalError("No such employee")
        }
         
        if let cc = me.getClassification() as? CommissionClassification {
            cc.setSalaryReceipt(sr: SalaryReceipt(amount: amount, date: date))
        } else {
            fatalError("Tried to add salaryReceipt to non-commissaion employee")
        }
    }
}
