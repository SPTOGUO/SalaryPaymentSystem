//
//  AddCommissionedEmployee.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/1.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation


class AddCommissionedEmployee: AddEmployeeTransation {
    private var salary: Double
    private var commissionRate: Double
    
    init(empid: Int, name: String, address: String, salary: Double, commissionRate: Double) {
        self.salary = salary
        self.commissionRate = commissionRate
        super.init(empid: empid, name: name, address: address)
    }
    
    override func getClassification() -> PaymentClassification? {
        return CommissionClassification(salary: salary, commissionRate: commissionRate)
    }
    
    override func getSchedule() -> PaymentSchedule? {
        return BiweeklySchedule()
    }
}
