//
//  AddSalariedEmployee.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/2/28.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import UIKit

class AddSalariedEmployee: AddEmployeeTransation {
    private let salary: Double
    
    init(empid: Int, name: String, address: String, salary: Double) {
        self.salary = salary
        super.init(empid: empid, name: name, address: address)
    }

    override func getClassification() -> PaymentClassification? {
        return SalariedClassification(salary: salary)
    }
    
    override func getSchedule() -> PaymentSchedule? {
        return MonthlyScheddule()
    }
}
