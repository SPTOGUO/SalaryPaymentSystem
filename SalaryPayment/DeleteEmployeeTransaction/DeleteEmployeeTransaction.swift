//
//  DeleteEmployeeTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/2.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class DeleteEmployeeTransaction: Transaction {
    private let empid: Int!
    
    init(empid: Int) {
        self.empid = empid
    }
    
    func execute() {
        gPayrollDatabase.deleteEmployee(empid: empid)
    }
}
