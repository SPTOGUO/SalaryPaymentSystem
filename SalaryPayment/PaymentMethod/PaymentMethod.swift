//
//  PaymentMethod.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/2/28.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

protocol PaymentMethod {
    func pay(paycheck: Paycheck)
}

class HoldMethod: PaymentMethod {
    
    init() {
    }
    
    func pay(paycheck: Paycheck) {
        paycheck.set(field: "Hold")
        print("Hold Method")
        print("gross: \(paycheck.getGrossPay())")
        print("deductions: \(paycheck.getDeductions())")
        print("net: \(paycheck.getNetPay())")
    }
}

class DirectMethod: PaymentMethod {
    private let bank: String
    private let account: String
    
    init(bank: String, account: String) {
        self.bank = bank
        self.account = account
    }
    
    func getBack() -> String {
        return bank
    }
    
    func getAccount() -> String {
        return account
    }
    
    func pay(paycheck: Paycheck) {
        
    }
}


class MailMethod: PaymentMethod {
    private let address: String
    
    init(address: String) {
        self.address = address
    }
    
    func getAdress() -> String {
        return address
    }
    
    func pay(paycheck: Paycheck) {
        
    }
}
