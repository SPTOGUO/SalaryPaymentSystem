//
//  Paycheck.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/14.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation


class Paycheck {
    private let itsPayDate: Date
    private let startDate: Date
    private var grossPay = 0.0
    private var deductions = 0.0
    private var netPay = 0.0
    private var method = ""
    
    init(startDate: Date, payDate: Date) {
        self.itsPayDate = payDate
        self.startDate = startDate
    }
    
    func set(grossPay: Double) {
        self.grossPay = grossPay
    }
    
    func set(deductions: Double) {
        self.deductions = deductions
    }
    
    func set(netPay: Double) {
        self.netPay = netPay
    }
    
    func set(field: String) {
        self.method = field
    }
    
    func getEndDate() -> Date {
        return itsPayDate
    }
    
    func getStartDate() -> Date {
        return startDate
    }
    
    func getGrossPay() -> Double {
        return grossPay
    }
    
    func getDeductions() -> Double {
        return deductions
    }
    
    func getNetPay() -> Double {
        return netPay
    }
    
    func getField() -> String {
        return method
    }
}
