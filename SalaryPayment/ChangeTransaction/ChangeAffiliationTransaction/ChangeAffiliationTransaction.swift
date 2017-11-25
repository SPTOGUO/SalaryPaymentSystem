//
//  ChangeAffiliationTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/10.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class ChangeAffiliationTransaction: ChangeEmpolyeeTransaction {
    override func change(employee: Employee) {
        let af = getAffiliation()
        employee.set(affiliation: af)
        recordMembership(employ: employee)
    }
    
    func getAffiliation() -> Affiliation {
        fatalError("子类实现")
    }
    
    func recordMembership(employ: Employee) {
        fatalError("子类实现")
    }
}
