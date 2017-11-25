//
//  TimeCardTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/2.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class TimeCardTransaction: Transaction {
    private let itsEmpid: Int!
    private let itsDate: Date!
    private let itsHours: Double!
    
    init(date: Date, hours: Double, empid: Int) {
        self.itsEmpid = empid
        self.itsDate = date
        self.itsHours = hours
    }
    
    func execute() {
        let e = gPayrollDatabase.getEmployee(empid: itsEmpid)
        
        if let em = e {
            let pc = em.getClassification()
            if let hc = pc as? HourlyClassification {
                hc.addTimeCard(timeCard: TimeCard(date: itsDate, hours: itsHours))
            } else {
                fatalError("Tried to add timecardto non-hourly employee")
            }
        }else {
            fatalError("No such employee")
        }
    }
}
