//
//  Affiliation.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/3/6.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

protocol Affiliation {
    var memberId: Int { get set }
    var charge: Double { get  }
    
    func calculateDeductions(paycheck: Paycheck) -> Double
}


class UnionAffiliation: Affiliation {
    var memberId: Int
    var charge: Double
    var serviceCharges = [ServiceCharge]()
    
    init(memberid: Int, charge: Double) {
        self.memberId = memberid
        self.charge = charge
    }
    
    func addServiceCharge(date: Date, charge: Double) {
        serviceCharges.append(ServiceCharge(date: date, charge: charge))
    }
    
    func getServiceCharge(date: Date) -> ServiceCharge? {
        var serviceCharge: ServiceCharge?
        for service in serviceCharges {
            if service.getDate() == date {
                serviceCharge = service
                break
            }
        }
        return serviceCharge
    }
    
    func getMemberId() -> Int {
        return memberId
    }
    
    func numberOfFridaysInPayPeriod(startDate: Date, endDate: Date) -> Int {
        var fridays = 0
        var day = startDate
        while day <= endDate {
            if day.weekday == 5 {
                fridays += 1
            }
            day = day.add(TimeChunk(seconds: 0, minutes: 0, hours: 0, days: 1, weeks: 0, months: 0, years: 0))
        }
        
        return fridays
    }
    
    func calculateDeductions(paycheck: Paycheck) -> Double {
        let fridays = numberOfFridaysInPayPeriod(startDate: paycheck.getStartDate(), endDate: paycheck.getEndDate())
        var dues = charge
        
        for service in serviceCharges {
            if service.getDate().isInPayPeriod(paycheck: paycheck) {
                dues += service.getAmount()
            }
        }
        return dues * Double(fridays)
    }
}

class NoAffiliation: Affiliation {
    var memberId: Int = 0
    var charge: Double = 0
    
    init() {
    }
    
    func calculateDeductions(paycheck: Paycheck) -> Double {
        return 0.0
    }
}
