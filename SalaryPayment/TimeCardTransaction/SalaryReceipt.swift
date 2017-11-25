//
//  SalaryReceipt.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/3.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class SalaryReceipt {
    private let date: Date
    private let amount: Double
    
    init(amount: Double, date: Date) {
        self.date = date
        self.amount = amount
    }
    
    func getAmount() -> Double {
        return amount
    }
}
