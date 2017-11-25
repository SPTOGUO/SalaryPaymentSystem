//
//  ChangeDiectTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/10.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation


class ChangeDiectTransaction: ChangePaymentMethodTransaction {
    private let back: String
    private let account: String
    
    
    init(empid: Int, back: String, account: String) {
        self.back = back
        self.account = account
        super.init(empid: empid)
    }
    
    override func getMethod() -> PaymentMethod? {
        return DirectMethod(bank: back, account: account)
    }

}
