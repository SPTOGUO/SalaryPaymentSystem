//
//  AddEmployeeTransation.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/2/27.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class AddEmployeeTransation: Transaction {
    private var itsEmpid: Int!
    private var itsName: String!
    private var itsAddress: String!
    
    init(empid: Int, name: String, address: String) {
        itsEmpid = empid
        itsName = name
        itsAddress = address
    }
//    
//    func addEmployeeTransaction(empid: Int, name: String, address: String) {
//        itsEmpid = empid
//        itsName = name
//        itsAddress = address
//    }
    
    func execute() {
        let pc = getClassification()
        let ps = getSchedule()
        let pm = HoldMethod()
        let affiliation = NoAffiliation()
        let e = Employee(itsEmpid, name: itsName, address: itsAddress)
        e.set(classification: pc!)
        e.set(schedule: ps!)
        e.set(method: pm)
        e.set(affiliation: affiliation)
        gPayrollDatabase.addEmployee(empid: itsEmpid, e: e)
        
    }
    
    func getClassification() -> PaymentClassification? {
        //子类实现
        return nil
    }
    
    func getSchedule() -> PaymentSchedule? {
        //子类实现
        return nil
    }
    
    
}
