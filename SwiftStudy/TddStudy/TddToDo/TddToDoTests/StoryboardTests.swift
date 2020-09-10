//
//  StoryboardTests.swift
//  TddToDoTests
//
//  Created by Desenvolvimento on 15/01/20.
//  Copyright © 2020 Raphael Barbosa. All rights reserved.
//

import XCTest
@testable import TddToDo

class StoryboardTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }
    
    func test_InitialViewController_IsItemListViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let navigationController = storyboard.instantiateInitialViewController() as! UINavigationController
        let rootViewController = navigationController.viewControllers[0]
        
        XCTAssertTrue(rootViewController is ItemListViewController)
    }

}
