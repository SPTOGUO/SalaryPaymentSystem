//
//  ChangeAdressTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/9.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class ChangeAdressTransaction: ChangeEmpolyeeTransaction {
    private let address: String
    
    init(empid: Int, address: String) {
        self.address = address
        super.init(empid: empid)
    }
    
    override func change(employee: Employee) {
        employee.set(address: address)
    }
}
