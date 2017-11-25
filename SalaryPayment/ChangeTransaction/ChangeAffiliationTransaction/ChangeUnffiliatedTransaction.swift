//
//  ChangeUnffiliatedTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/10.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class ChangeUnffiliatedTransaction: ChangeAffiliationTransaction {
    
    override func getAffiliation() -> Affiliation {
        return NoAffiliation()
    }
    
    override func recordMembership(employ: Employee) {
        let af = employ.getAffiliation()
        if let ua = af as? UnionAffiliation {
            let memberId = ua.getMemberId()
            gPayrollDatabase.removeUnionMember(member: memberId)
        }
    }
}
