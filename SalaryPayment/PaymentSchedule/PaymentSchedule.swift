//
//  PaymentSchedule.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/2/28.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

protocol PaymentSchedule {
    func isPayDate(date: Date) -> Bool
    
    func getStartDate(payDate: Date) -> Date
}
