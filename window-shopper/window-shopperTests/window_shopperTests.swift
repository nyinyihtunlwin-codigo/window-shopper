//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Administrator on 8/12/20.
//  Copyright © 2020 Nyi Nyi Htun Lwin. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testGetHours(){
        XCTAssert(Wage.getHours(forWage: 10.0, forPrice: 100.0) == 10)
         XCTAssert(Wage.getHours(forWage: 3.33, forPrice: 10.0) == 4)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
