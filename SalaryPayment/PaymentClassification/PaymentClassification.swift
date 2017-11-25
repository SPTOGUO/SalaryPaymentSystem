//
//  PaymentClassification.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/2/27.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

protocol PaymentClassification {
    func calculatePay(paycheck: Paycheck) -> Double
    
    //func isInPayPeriod(date: Date, paycheck: Paycheck) -> Bool
}

//extension PaymentClassification {
//    func isInPayPeriod(date: Date, paycheck: Paycheck) -> Bool {
//        let endDate = paycheck.getEndDate()
//        let startDate = paycheck.getStartDate()
//        return (date >= startDate) && (date <= endDate)
//    }
//}

extension Date {
    func isInPayPeriod(paycheck: Paycheck) -> Bool {
        let endDate = paycheck.getEndDate()
        let startDate = paycheck.getStartDate()
        return (self >= startDate) && (self <= endDate)
    }
}
