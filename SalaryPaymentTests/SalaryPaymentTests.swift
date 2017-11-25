//
//  SalaryPaymentTests.swift
//  SalaryPaymentTests
//
//  Created by Guo Zhiqiang on 17/2/27.
//  Copyright © 2017年 Guo Zhiqiang. All rights reserved.
//

import XCTest
@testable import SalaryPayment

class SalaryPaymentTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
//    func testAddSalariedEmployee() {
//        let empid = 1
//        let t = AddSalariedEmployee(empid: empid, name: "Bob", address: "Home", salary: 1000)
//        t.execute()
//        
//        let e = gPayrollDatabase.getEmployee(empid: empid)
//        XCTAssert("Bob" == e?.getName())
//        
//        let pc = e!.getClassification() as? SalariedClassification
//        XCTAssert(pc != nil)
//        let sc = pc!
//        XCTAssertEqual(1000, sc.getSalary())
//        
//        let ps = e!.getSchedule() as? MonthlyScheddule
//        XCTAssert(ps != nil)
//        
//        let pm = e!.getMethod() as? HoldMethod
//        XCTAssert(pm != nil)
//    }
//    
//    func testAddHoulyEmployee() {
//        let empid = 2
//        
//        let t = AddHourlyEmployee(empid: empid, name: "Guo", address: "Work", hourlyRate: 20)
//        t.execute()
//        
//        let e = gPayrollDatabase.getEmployee(empid: empid)
//        XCTAssert("Guo" == e?.getName())
//        
//        let pc = e!.getClassification() as? HourlyClassification
//        XCTAssert(pc != nil)
//        
//        
//        let ws = e!.getSchedule() as? WeeklySchedule
//        XCTAssert(ws != nil)
//        
//        let pm = e!.getMethod() as? HoldMethod
//        XCTAssert(pm != nil)
//    }
//    
//    func testAddCommissionedEmployee() {
//        let empid = 3
//       
//        let t =  AddCommissionedEmployee(empid: empid, name: "Zhi", address: "Work", salary: 200, commissionRate: 10)
//        t.execute()
//        
//        let e = gPayrollDatabase.getEmployee(empid: empid)
//        XCTAssert("Zhi" == e?.getName())
//        
//        let pc = e!.getClassification() as? CommissionClassification
//        XCTAssert(pc != nil)
//        
//        
//        let ws = e!.getSchedule() as? BiweeklySchedule
//        XCTAssert(ws != nil)
//        
//        let pm = e!.getMethod() as? HoldMethod
//        XCTAssert(pm != nil)
//    }
//    
//    func testDeleteEmployeeTransaction() {
//        let empid = 4
//        let t = AddSalariedEmployee(empid: empid, name: "qiang", address: "home", salary: 2000)
//        t.execute()
//        
//        let em = gPayrollDatabase.getEmployee(empid: empid)
//        XCTAssert(em != nil)
//        
//        let de = DeleteEmployeeTransaction(empid:empid)
//        de.execute()
//        
//        let em2 = gPayrollDatabase.getEmployee(empid: empid)
//        XCTAssert(em2 == nil)
//    }
//    
//    func testTimeCardTransactiont() {
//        let empid = 5
//        
//        let t = AddHourlyEmployee(empid: empid, name: "gzq", address: "work", hourlyRate: 20)
//        t.execute()
//        
//        let em = gPayrollDatabase.getEmployee(empid: empid)
//        XCTAssert(em != nil)
//        
//        let hc = em?.getClassification() as? HourlyClassification
//        XCTAssert(hc != nil)
//        
//        let tt = TimeCardTransaction(date: Date(), hours: 8.0 , empid: 5)
//        tt.execute()
//        let tc = hc!.getTimeCard()
//        XCTAssert(tc != nil)
//        XCTAssertEqual(tc!.getHours(), 8.0)
//    }
//    
//    func testSalasReceiptTransaction1() {
//        let empid = 6
//        
//        let sm = AddCommissionedEmployee(empid: empid, name: "guz", address: "home", salary: 200, commissionRate: 10)
//        sm.execute()
//        
//        let em = gPayrollDatabase.getEmployee(empid: empid)
//        XCTAssert(em != nil)
//
//        let st = SalaryReceiptTransaction(amount: 100, date: Date(), empid: empid)
//        st.execute()
//        
//        let mc = em?.getClassification() as? CommissionClassification
//        XCTAssert(mc != nil)
//        let sr = mc?.getSalaryReceipt()
//        XCTAssert(sr != nil)
//        let amo = sr!.getAmount()
//        XCTAssertEqual(amo, 100)
//    }
//    
//    func testAddServiceCharge() {
//        let empid = 7
//        let memberID = 86
//        let date = Date()
//        
//        let t = AddHourlyEmployee(empid: empid, name: "gzh", address: "work", hourlyRate: 10)
//        t.execute()
//        
//        let em = gPayrollDatabase.getEmployee(empid: empid)
//        XCTAssert(em != nil)
//        
//        let af = UnionAffiliation(memberid: memberID, charge: 12.5)
//        em!.set(affiliation: af)
//        gPayrollDatabase.addUnionMember(memberId: memberID, empid: empid)
//        
//        let sct = ServiceChargeTransaction(memberId: memberID, date: date, amount: 12.95)
//        sct.execute()
//        
//        let sc = af.getServiceCharge(date: date)
//        XCTAssert(sc != nil)
//        XCTAssertEqual(12.95, sc!.getAmount())
//    }
//    
//    func testChangeNameTransaction() {
//        let empid = 8
//        let t = AddHourlyEmployee(empid: empid, name: "Bill", address: "Home", hourlyRate: 15.25)
//        t.execute()
//        
//        let cnt = ChangeNameTransaction(empid: empid, name: "Bob")
//        cnt.execute()
//        
//        let e = gPayrollDatabase.getEmployee(empid: empid)
//        XCTAssert(e != nil)
//        XCTAssert(e?.getName() == "Bob")
//        
//    }
//    
//    func testChangeHourlyTransaction() {
//        let empid = 9
//        let t = AddCommissionedEmployee(empid: empid, name: "sss", address: "work", salary: 10, commissionRate: 8.0)
//        t.execute()
//        
//        let cct = ChangeHourlyTransaction(empid: empid, hourlyRate: 27.52)
//        cct.execute()
//        
//        let e = gPayrollDatabase.getEmployee(empid: empid)
//        XCTAssert(e != nil)
//        let pc = e?.getClassification()
//        XCTAssert(pc != nil)
//        let hc = pc as? HourlyClassification
//        XCTAssert(hc != nil)
//        let hr = hc!.getHourlyRate()
//        XCTAssertEqual(hr, 27.52)
//        let ps = e?.getSchedule() as? WeeklySchedule
//        XCTAssert(ps != nil)
//    }
//    
//    func testChangeAdressTransaction() {
//        let empid = 10
//        let t = AddSalariedEmployee(empid: empid, name: "eee", address: "Home", salary: 3000)
//        t.execute()
//        
//        let ca = ChangeAdressTransaction(empid: empid, address: "work")
//        ca.execute()
//        
//        let e = gPayrollDatabase.getEmployee(empid: empid)
//        XCTAssert(e != nil)
//        XCTAssert(e?.getAdress() == "work")
//    }
//    
//    func testChangeSalaryTransaction() {
//        let empid = 11
//        let t = AddHourlyEmployee(empid: empid, name: "fff", address: "Home", hourlyRate: 30)
//        t.execute()
//        
//        let cs = ChangeSalaryTransaction(empid: empid, salary: 2000)
//        cs.execute()
//        
//        let e = gPayrollDatabase.getEmployee(empid: empid)
//        XCTAssert(e != nil)
//        
//        let sc = e!.getClassification() as? SalariedClassification
//        XCTAssert(sc != nil)
//        XCTAssert(sc?.getSalary() == 2000)
//        let ms = e!.getSchedule() as? MonthlyScheddule
//        XCTAssert(ms != nil)
//    }
//    
//    func testChangeCommissionTransaction() {
//        let empid = 12
//        let t = AddSalariedEmployee(empid: empid, name: "aaa", address: "Work", salary: 4000)
//        t.execute()
//        
//        let cm = ChangeCommissonTransaction(empid: empid, salary: 10, commissionRate: 8.0)
//        cm.execute()
//        
//        let e = gPayrollDatabase.getEmployee(empid: empid)
//        XCTAssert(e != nil)
//        
//        let cc = e!.getClassification() as? CommissionClassification
//        XCTAssert(cc != nil)
//        XCTAssertEqual(cc!.getSalary(), 10)
//        XCTAssertEqual(cc!.getCommissionRate(), 8.0)
//        let cs = e!.getSchedule() as? WeeklySchedule
//        XCTAssert(cs != nil)
//    }
//    
//    func testMethodTransaction() {
//        let empid = 13
//        let t = AddHourlyEmployee(empid: empid, name: "sss", address: "Work", hourlyRate: 12.0)
//        t.execute()
//        
//        let cm = ChangeDiectTransaction(empid: empid, back: "China", account: "123456")
//        cm.execute()
//        
//        let e = gPayrollDatabase.getEmployee(empid: empid)
//        XCTAssert(e != nil)
//        
//        let pm = e?.getMethod() as? DirectMethod
//        XCTAssert(pm != nil)
//        XCTAssertEqual(pm!.getBack(), "China")
//        XCTAssertEqual(pm!.getAccount(), "123456")
//    }
    
//    func testPaySingleSalariesEmployee() {
//        let empid = 14
//        let t = AddSalariedEmployee(empid: empid, name: "Bob", address: "Home", salary: 1000.0)
//        t.execute()
//        let payDate = Date(year: 2001, month: 11, day: 30)
//        let pt = PaydayTransaction(payDate: payDate)
//        pt.execute()
//        let pc = pt.getPaycheck(empid: empid)
//        XCTAssert(pc != nil)
//        XCTAssert(pc!.getPayDate() == payDate)
//        XCTAssert(1000.0 == pc!.getGrossPay())
//        XCTAssert(pc!.getField() == "Hold")
//        XCTAssert(pc!.getDeductions() == 0.0)
//        XCTAssert(pc!.getNetPay() == 1000.0)
//    }
//    
//    func testPaySingleSalariesEmployeeOnWrongDate() {
//        let empid = 15
//        let t = AddSalariedEmployee(empid: empid, name: "Bob", address: "Home", salary: 1000.0)
//        t.execute()
//        let payDate = Date(year: 2001, month: 11, day: 29)
//        let pt = PaydayTransaction(payDate: payDate)
//        pt.execute()
//        let pc = pt.getPaycheck(empid: empid)
//        XCTAssert(pc == nil)
//    }
    
    func testPaySingleHourlyEmployeeNoTimeCards() {
        let empid = 16
        let t = AddHourlyEmployee(empid: empid, name: "Bill", address: "HOme", hourlyRate: 15.25)
        t.execute()
        
        let payDate = Date(year: 2001, month: 11, day: 8)
        let pt = PaydayTransaction(payDate: payDate)
        pt.execute()
        validatePaycheck(pt: pt, empid: empid, payDate: payDate, pay: 0.0, dues: 0.0)
    }
    
    func validatePaycheck(pt: PaydayTransaction, empid: Int, payDate: Date, pay: Double, dues: Double) {
        let pc = pt.getPaycheck(empid: empid)
        XCTAssert(pc != nil)
        XCTAssert(pc!.getEndDate() == payDate)
        XCTAssert((pay) == pc!.getGrossPay())
        XCTAssert(pc!.getField() == "Hold")
        XCTAssert(pc!.getDeductions() == dues)
        XCTAssert(pc!.getNetPay() == pay - dues)
    }
    
    func testPaySingleHourlyEmployeeOneTimeCards() {
        let empid = 17
        let t = AddHourlyEmployee(empid: empid, name: "Bill", address: "HOme", hourlyRate: 15.25)
        t.execute()
        
        let payDate = Date(year: 2001, month: 11, day: 8)
        let tc = TimeCardTransaction(date: payDate, hours: 2.0, empid: empid)
        tc.execute()
        
        let pt = PaydayTransaction(payDate: payDate)
        pt.execute()
        validatePaycheck(pt: pt, empid: empid, payDate: payDate, pay: 30.5, dues: 0.0)
    }
    
    func testPaySingleHourlyEmployeeOvertimeOneTimeCards() {
        let empid = 18
        let t = AddHourlyEmployee(empid: empid, name: "Bill", address: "HOme", hourlyRate: 15.25)
        t.execute()
        
        let payDate = Date(year: 2001, month: 11, day: 8)
        let tc = TimeCardTransaction(date: payDate, hours: 9.0, empid: empid)
        tc.execute()
        
        let pt = PaydayTransaction(payDate: payDate)
        pt.execute()
        validatePaycheck(pt: pt, empid: empid, payDate: payDate, pay: (8 + 1.5) * 15.25, dues: 0.0)
    }
    
    func testPaySingleHourlyEmployOnWrongDate() {
        let empid = 19
        let t = AddHourlyEmployee(empid: empid, name: "Bill", address: "Home", hourlyRate: 15.25)
        t.execute()
        
        let payDate = Date(year: 2001, month: 11, day: 7)
        let tc = TimeCardTransaction(date: payDate, hours: 9.0, empid: empid)
        tc.execute()
        
        let pt = PaydayTransaction(payDate: payDate)
        pt.execute()
        
        let pc = pt.getPaycheck(empid: empid)
        XCTAssert(pc == nil)
    }
    
    func testPaySingleHourlyEmployeeTwoTimeCards() {
        let empid = 20
        let t = AddHourlyEmployee(empid: empid, name: "Bill", address: "Home", hourlyRate: 15.25)
        t.execute()
        
        let payDate1 = Date(year: 2001, month: 11, day: 7)
        let payDate2 = Date(year: 2001, month: 11, day: 8)
        let payDate3 = Date(year: 2001, month: 11, day: 6)
        let payDate4 = Date(year: 2001, month: 11, day: 5)
        let payDate5 = Date(year: 2001, month: 11, day: 4)
        let payDate6 = Date(year: 2001, month: 11, day: 3)
        
        let tc1 = TimeCardTransaction(date: payDate1, hours: 2.0, empid: empid)
        let tc2 = TimeCardTransaction(date: payDate2, hours: 5.0, empid: empid)
        let tc3 = TimeCardTransaction(date: payDate3, hours: 1.0, empid: empid)
        let tc4 = TimeCardTransaction(date: payDate4, hours: 1.0, empid: empid)
        let tc5 = TimeCardTransaction(date: payDate5, hours: 1.0, empid: empid)
        let tc6 = TimeCardTransaction(date: payDate6, hours: 1.0, empid: empid)
        tc1.execute()
        tc2.execute()
        tc3.execute()
        tc4.execute()
        tc5.execute()
        tc6.execute()
        
        let pt = PaydayTransaction(payDate: payDate2)
        pt.execute()
        
        validatePaycheck(pt: pt, empid: empid, payDate: payDate2, pay: 10 * 15.25, dues: 0.0)
        
    }
    
    func testSalariedUnionMemberDues() {
        let empid = 21
        let t = AddSalariedEmployee(empid: empid, name: "Bob", address: "worl", salary: 1000.0)
        t.execute()
        
        let memberId = 7734
        let cmt = ChangeMemberTransaction(empid: empid, memberid: memberId, dues: 9.0)
        cmt.execute()
        
        let payDate = Date(year: 2001, month: 11, day: 30)
        let pt = PaydayTransaction(payDate: payDate)
        pt.execute()
        validatePaycheck(pt: pt, empid: empid, payDate: payDate, pay: 1000.0 , dues: 9.0 * 5)
    }
    
    func testHourlyUnionMemberServiceCharge() {
        let empid = 22
        let t = AddHourlyEmployee(empid: empid, name: "Bill", address: "Home", hourlyRate: 15.0)
        t.execute()
        
        let memberId = 7734
        let cmt = ChangeMemberTransaction(empid: empid, memberid: memberId, dues: 9.0)
        cmt.execute()
        
        let payDate = Date(year: 2001, month: 11, day: 8)
        let sct = ServiceChargeTransaction(memberId: memberId, date: payDate, amount: 19.0)
        sct.execute()
        
        let tct = TimeCardTransaction(date: payDate, hours: 8.0, empid: empid)
        tct.execute()
        
        let pt = PaydayTransaction(payDate: payDate)
        pt.execute()
        
        validatePaycheck(pt: pt, empid: empid, payDate: payDate, pay: 15.0 * 8, dues: 9.0 + 19.0)
    }
    
    func testServiceChargeSpanningMultiplePayPeriods() {
        let empid = 23
        let t = AddHourlyEmployee(empid: empid, name: "Bill", address: "Home", hourlyRate: 15.0)
        t.execute()
        
        let memberId = 7734
        let cmt = ChangeMemberTransaction(empid: empid, memberid: memberId, dues: 9.0)
        cmt.execute()
        
        let earlyDate = Date(year: 2001, month: 11, day: 1)
        let payDate = Date(year: 2001, month: 11, day: 8)
        let payDateBeforeDay = Date(year: 2001, month: 11, day: 7)
        let lateDate = Date(year: 2001, month: 11, day: 15)
        
        let sct = ServiceChargeTransaction(memberId: memberId, date: payDate, amount: 19.0)
        sct.execute()
        
        let sctBeforeDay = ServiceChargeTransaction(memberId: memberId, date: payDateBeforeDay, amount: 20.0)
        sctBeforeDay.execute()
        
        let sctEarly = ServiceChargeTransaction(memberId: memberId, date: earlyDate, amount: 100.0)
        sctEarly.execute()
        
        let sctLate = ServiceChargeTransaction(memberId: memberId, date: lateDate, amount: 200.0)
        sctLate.execute()
        
        let tct = TimeCardTransaction(date: payDate, hours: 8.0, empid: empid)
        tct.execute()
        
        let tct2 = TimeCardTransaction(date: payDateBeforeDay, hours: 9.0, empid: empid)
        tct2.execute()
        
        let pt = PaydayTransaction(payDate: payDate)
        pt.execute()
        
        validatePaycheck(pt: pt, empid: empid, payDate: payDate, pay: (8 + 8 + 1.5) * 15.0, dues: 9.0 + 19.0 + 20.0)
    }
    
    func testSalariedServiceChargeSpanningMultiplePayPeriods() {
        let empid = 24
        let salary = 2000.0
        let memberId = 7735
        let a = AddSalariedEmployee(empid: empid, name: "gzq", address: "Work", salary: salary)
        a.execute()
        
        let ac = ChangeMemberTransaction(empid: empid, memberid: memberId, dues: 10.0)
        ac.execute()
        
        let earlyDate = Date(year: 2001, month: 11, day: 1)
        let payDate = Date(year: 2001, month: 11, day: 30)
        let lastMonth = Date(year: 2001, month: 10, day: 29)
        let lateDate = Date(year: 2001, month: 12, day: 15)
        
        let sctEarly = ServiceChargeTransaction(memberId: memberId, date: earlyDate, amount: 100.0)
        sctEarly.execute()
        let sctLast = ServiceChargeTransaction(memberId: memberId, date: lastMonth, amount: 50)
        sctLast.execute()
        let sctLate = ServiceChargeTransaction(memberId: memberId, date: lateDate, amount: 200.0)
        sctLate.execute()
        
        let pt = PaydayTransaction(payDate: payDate)
        pt.execute()
        
        validatePaycheck(pt: pt, empid: empid, payDate: payDate, pay: salary, dues: (10.0 + 100) * 5)
    }
}
