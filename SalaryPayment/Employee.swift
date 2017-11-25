//
//  Employee.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/2/27.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation


class Employee {
    let empid: Int
    private var name: String
    private var address: String
    private var classification: PaymentClassification?
    private var schedule: PaymentSchedule?
    private var method: PaymentMethod?
    private var affiliation: Affiliation?
    
    init(_ id: Int, name: String, address: String) {
        self.empid = id
        self.name = name
        self.address = address
    }
    
    func set(classification: PaymentClassification) {
        self.classification = classification
    }
    
    func set(schedule: PaymentSchedule) {
        self.schedule = schedule
    }
    
    func set(method: PaymentMethod) {
        self.method = method
    }
    
    func set(affiliation: Affiliation) {
        self.affiliation = affiliation
    }
    
    func set(name: String) {
        self.name = name
    }
    
    func set(address: String) {
        self.address = address
    }
    
    func getClassification() -> PaymentClassification? {
        return classification
    }
    
    func getSchedule() -> PaymentSchedule? {
        return schedule
    }
    
    func getMethod() -> PaymentMethod? {
        return method
    }
    
    func getAffiliation() -> Affiliation? {
        return affiliation
    }
    
    func getName() -> String {
        return name
    }
    
    func getAdress() -> String {
        return address
    }
    
    func isPayDate(payDate: Date) -> Bool{
        guard let schedule = schedule else { return false }
        guard schedule.isPayDate(date: payDate) else { return false }
        return true
    }
    
    func payday(paycheck: Paycheck) {
        guard let classification = classification, let affiliation = affiliation else { return }
        
        let grossPay = classification.calculatePay(paycheck: paycheck)
        let deductions = affiliation.calculateDeductions(paycheck: paycheck)
        let netPay = grossPay - deductions
        
        paycheck.set(grossPay: grossPay)
        paycheck.set(deductions: deductions)
        paycheck.set(netPay: netPay)
        
        method?.pay(paycheck: paycheck)
        
    }
    
    func getPayPeriodStartDate(payDate: Date) -> Date?{
        guard let schedule = schedule else { return nil }
        return schedule.getStartDate(payDate: payDate)
    }
}
