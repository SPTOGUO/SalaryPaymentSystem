//
//  ChangeEmpolyeeTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/8.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class ChangeEmpolyeeTransaction: Transaction {
    private let empid: Int
    
    init(empid: Int) {
        self.empid = empid
    }
    
    func execute() {
        let e = gPayrollDatabase.getEmployee(empid: empid)
        if let employ = e {
            change(employee: employ)
        }
    }
    
    func change(employee: Employee) {
        //子类实现
        fatalError("子类实现")
    }
}
