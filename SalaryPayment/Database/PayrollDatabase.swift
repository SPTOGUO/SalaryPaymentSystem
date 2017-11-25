//
//  PayrollDatabase.swift
//  SalaryPayment
//
//  Created by Guo Zhiqiang on 17/2/27.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import Foundation

let gPayrollDatabase = PayrollDatabase()

class PayrollDatabase {
    private var itsEmployees = [Int: Employee]()
    private var unionMembers = [Int: Int]()
    
    func getEmployee(empid: Int) -> Employee? {
        return itsEmployees[empid]
    }
    
    func addEmployee(empid: Int, e: Employee) {
        itsEmployees[empid] = e
    }
    
    func deleteEmployee(empid: Int) {
        itsEmployees.removeValue(forKey: empid)
    }
    
    func addUnionMember(memberId: Int, empid: Int) {
        unionMembers[memberId] = empid
    }
    
    func getUnionMember(memberId: Int) -> Employee? {
        guard let empid = unionMembers[memberId] else { return nil }
        
        if let e = itsEmployees[empid] {
            return e
        }
        return nil
    }
    
    func removeUnionMember(member: Int) {
        unionMembers.removeValue(forKey: member)
    }
    
    func getAllEmployeeIds() -> [Int] {
        let empids = itsEmployees.map { (key, _) in
            return key
        }
        return empids
    }
    
}
