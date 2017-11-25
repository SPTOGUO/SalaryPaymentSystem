//
//  ChangeNameTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/8.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class ChangeNameTransaction: ChangeEmpolyeeTransaction {
    private let name: String
    
    init(empid: Int, name: String) {
        self.name = name
        super.init(empid: empid)
    }
    
    override func change(employee: Employee) {
        employee.set(name: name)
    }
}
