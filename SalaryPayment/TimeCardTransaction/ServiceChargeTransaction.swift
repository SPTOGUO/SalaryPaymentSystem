//
//  ServiceChargeTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/6.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation


class ServiceChargeTransaction: Transaction {
    private let itsMemberId: Int
    private let itsdDate: Date
    private let itsCharge: Double
    
    init(memberId: Int, date: Date, amount: Double) {
        self.itsMemberId = memberId
        self.itsdDate = date
        self.itsCharge = amount
    }
    
    func execute() {
        guard let e = gPayrollDatabase.getUnionMember(memberId: itsMemberId) else {
            fatalError("No such employee")
        }
        
        if let af = e.getAffiliation() as? UnionAffiliation {
            af.addServiceCharge(date: itsdDate, charge: itsCharge)
        } else {
            fatalError("Tried to add salaryReceipt to non-commissaion employee")
        }
    }
}
