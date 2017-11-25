//
//  ChangeClassificationTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/8.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class ChangeClassificationTransaction: ChangeEmpolyeeTransaction {
    override init(empid: Int) {
        super.init(empid: empid)
    }
    
    override func change(employee: Employee) {
        employee.set(classification: getClassification()!)
        employee.set(schedule: getSchedule()!)
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
