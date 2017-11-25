//
//  PaydayTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/13.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class PaydayTransaction: Transaction {
    private let itsPayDate: Date
    private var itsPaychecks = [Int: Paycheck]()
    
    init(payDate: Date) {
        self.itsPayDate = payDate
    }
    
    
    func execute() {
        let empids: [Int] = gPayrollDatabase.getAllEmployeeIds()
        for empid in empids {
            guard let e = gPayrollDatabase.getEmployee(empid: empid) else { continue }
            
            if e.isPayDate(payDate: itsPayDate), let startDate =  e.getPayPeriodStartDate(payDate: itsPayDate) {
                let pc = Paycheck(startDate: startDate, payDate: itsPayDate)
                itsPaychecks[empid] = pc
                e.payday(paycheck: pc)
            }
        }
    }
    
    func getPaycheck(empid: Int) -> Paycheck?{
        return itsPaychecks[empid]
    }
}
