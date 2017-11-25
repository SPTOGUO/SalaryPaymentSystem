//
//  ChangeMailTransaction.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/10.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation


class ChangeMailTransaction: ChangePaymentMethodTransaction {
    private let address: String
    
    init(empid: Int, address: String) {
        self.address = address
        super.init(empid: empid)
    }
    
    override func getMethod() -> PaymentMethod? {
        return MailMethod(address: address)
    }
}
