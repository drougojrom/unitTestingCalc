//
//  testCalcTests.swift
//  testCalcTests
//
//  Created by Roman Ustiantcev on 08/06/16.
//  Copyright © 2016 Roman Ustiantcev. All rights reserved.
//

import XCTest
@testable import testCalc

class testCalcTests: XCTestCase {
    var vc: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        vc = storyboard.instantiateInitialViewController() as! ViewController
        
        
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // test for percentage
    func testPercentageCalculator(){
        
        let p = vc.percentage(50, 50)
        XCTAssert(p == 25)
    }
    
    func testLabelValuesShowedProperly(){
        let _ = vc.view
        vc.updateLabels(Float(80.0), Float(50.0), Float(40.0))
        
        XCTAssert(vc.numberLabel.text! == "80.0", "numberLabel doesn't show the right text")
        XCTAssert(vc.percentageLabel.text! == "50.0%", "percentageLabel doesn't show the right text")
        XCTAssert(vc.resultLabel.text! == "40.0", "resultLabel doesn't show the right text")
    }
    
}
