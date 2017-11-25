//
//  ChangePaymentMethodTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/9.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

class ChangePaymentMethodTransaction: ChangeEmpolyeeTransaction {
    
    override func change(employee: Employee) {
        employee.set(method: getMethod()!)
    }
    
    func getMethod() -> PaymentMethod?{
        fatalError("子类实现")
    }
}
