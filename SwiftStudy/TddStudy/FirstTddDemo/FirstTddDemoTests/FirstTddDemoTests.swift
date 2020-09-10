//
//  FirstTddDemoTests.swift
//  FirstTddDemoTests
//
//  Created by Desenvolvimento on 13/01/20.
//  Copyright © 2020 Raphael Barbosa. All rights reserved.
//

import XCTest
@testable import FirstTddDemo

class FirstTddDemoTests: XCTestCase {
    
    var viewController: ViewController!

    override func setUp() {
        super.setUp()
        viewController = ViewController()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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
    
    func test_NumberOfVowels_WhenPassedDominik_ReturnsThree() {
        let viewController = ViewController()
        
        let string = "Dominik"
        
        let numberOfVowels = viewController.numberOfVowels(in: string)
        
        XCTAssertEqual(numberOfVowels, 3, "should find 3 vowels in Dominik")
    }
    
    func test_MakeHeadlile_ReturnsStringWithEachWordStartCapital() {
        
        let input = "this is A test headline"
        let expectedOutput = "This Is A Test Headline"
        
        let headline = viewController.makeHeadline(from: input)
        
        XCTAssertEqual(headline, expectedOutput)
    }
    
    func test_MakeHeadlin_ReturnsStringWithEachWordStartCapitalTwo() {
        
        let input = "Here is another Example"
        let expectedOutput = "Here Is Another Example"
        
        let headline = viewController.makeHeadline(from: input)
        
        XCTAssertEqual(headline, expectedOutput)
    }

}
