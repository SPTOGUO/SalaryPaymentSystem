//
//  ChangeMemberTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/10.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation


class ChangeMemberTransaction: ChangeAffiliationTransaction {
    private let memberid: Int
    private let dues: Double
    
    init(empid: Int, memberid: Int, dues: Double) {
        self.memberid = memberid
        self.dues = dues
        super.init(empid: empid)
    }
    
    override func getAffiliation() -> Affiliation {
        return UnionAffiliation(memberid: memberid, charge: dues)
    }
    
    override func recordMembership(employ: Employee) {
        gPayrollDatabase.addUnionMember(memberId: memberid, empid: employ.empid)
    }
    
    
}
