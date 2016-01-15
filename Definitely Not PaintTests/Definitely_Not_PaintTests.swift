//
//  Definitely_Not_PaintTests.swift
//  Definitely Not PaintTests
//
//  Created by Stephen Wong on 1/15/16.
//  Copyright © 2016 Intrepid Pursuits. All rights reserved.
//

import XCTest
@testable import Definitely_Not_Paint

class Definitely_Not_PaintTests: XCTestCase {
    
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
        
        //test a line starting at (0,0) ending at (0,0)
        let startPoint1 = CGPoint(x: 0, y: 0)
        let endPoint1 = CGPoint(x: 0, y: 0)
        let color1 = UIColor.blackColor()
        let testLine1 = Line(start: startPoint1, end: endPoint1, color: color1)
        XCTAssertEqual(testLine1.start, startPoint1)
        XCTAssertEqual(testLine1.end, endPoint1)
        XCTAssertEqual(testLine1.color, color1)
        
        let startPoint2 = CGPoint(x: 0.0, y: 0.0)
        let endPoint2 = CGPoint(x: 800.0, y: 800.0)
        let color2 = UIColor.whiteColor()
        let testLine2 = Line(start: startPoint2, end: endPoint2, color: color2)
        XCTAssertEqual(testLine2.start, startPoint2)
        XCTAssertEqual(testLine2.end, endPoint2)
        XCTAssertEqual(testLine2.color, color2)
        
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
