//
//  ServiceCharge.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/6.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class ServiceCharge {
    private let itsDate: Date
    private let itsCharge: Double
    
    init(date: Date, charge: Double) {
        self.itsDate = date
        self.itsCharge = charge
    }
    
    func getDate() -> Date {
        return itsDate
    }
    
    func getAmount() -> Double {
        return itsCharge
    }
}
