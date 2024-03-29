//
//  ItemListViewControllerTest.swift
//  TddToDoTests
//
//  Created by Desenvolvimento on 13/01/20.
//  Copyright © 2020 Raphael Barbosa. All rights reserved.
//

import XCTest
@testable import TddToDo

class ItemListViewControllerTest: XCTestCase {

    var sut: ItemListViewController!
    var tableView: UITableView?
    
    override func setUp() {
        super.setUp()

        let storyboard = UIStoryboard(name: "Main",
                                      bundle: nil)
        let viewController =
          storyboard.instantiateViewController(
            withIdentifier: "ItemListViewController")
        sut = viewController
          as! ItemListViewController
        
        
        sut.loadViewIfNeeded()
    }

    override func tearDown() {
        super.tearDown()
    }
    
    func test_TableView_AfterViewDidLoad_IsNotNil() {
        XCTAssertNotNil(sut.tableView)
    }

    
    func test_LoadingView_SetsTableViewDataSource() {
        XCTAssertTrue(sut.tableView.dataSource is ItemListDataProvider)
    }
    
    func test_LoadingView_SetsTableViewDelegate() {
        XCTAssertTrue(sut.tableView.delegate is ItemListDataProvider)
    }
    
    func test_LoadingView_DataSourceEqualDelegate() {
        XCTAssertEqual(sut.tableView.dataSource as? ItemListDataProvider,
                       sut.tableView.delegate as? ItemListDataProvider)
    }
    
    func test_ViewDidLoad_SetsItemManagerToDataProvider() {
        sut.beginAppearanceTransition(true, animated: true)
        sut.endAppearanceTransition()
        
        XCTAssertTrue(sut.itemManager === sut.dataProvider.itemManager)
    }
    
    func testItemSelectedNotification_PushesDetailVC() {
        
        let mockNavigationController = MockNavigationController(rootViewController: sut)
        
        UIApplication.shared.keyWindow?.rootViewController = mockNavigationController
        
        sut.loadViewIfNeeded()
        sut.itemManager.add(ToDoItem(title: "foo"))
        sut.itemManager.add(ToDoItem(title: "bar"))
        
        NotificationCenter.default.post(
            name: NSNotification.Name("ItemSelectedNotification"),
            object: self,
            userInfo: ["index": 1])
        
        guard let detailViewController = mockNavigationController
          .lastPushedViewController as? DetailViewController else {
            return XCTFail()
        }

         
        guard let detailItemManager = detailViewController.itemInfo?.0 else
        { return XCTFail() }

         
        guard let index = detailViewController.itemInfo?.1 else
        { return XCTFail() }
        
        detailViewController.loadViewIfNeeded()
        
        XCTAssertNotNil(detailViewController.titleLabel)
        XCTAssertTrue(detailItemManager === sut.itemManager)
        XCTAssertEqual(index, 1)
        
        
    }
}

extension ItemListViewControllerTest {
    class MockNavigationController: UINavigationController {
        
        var lastPushedViewController: UIViewController?
        
        override func pushViewController(_ viewController: UIViewController,
                                         animated: Bool) {
            lastPushedViewController = viewController
            super.pushViewController(viewController, animated: animated)
        }
    }
}
