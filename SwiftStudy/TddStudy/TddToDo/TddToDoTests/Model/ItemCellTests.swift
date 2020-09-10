//
//  ItemCellTests.swift
//  TddToDoTests
//
//  Created by Desenvolvimento on 14/01/20.
//  Copyright © 2020 Raphael Barbosa. All rights reserved.
//

import XCTest
@testable import TddToDo

extension ItemCellTests {
    class FakeDataSource: NSObject, UITableViewDataSource {
        
        func tableView(_ tableView: UITableView,
                       numberOfRowsInSection section: Int) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView,
                       cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            return UITableViewCell()
        }
    }
}

class ItemCellTests: XCTestCase {
    
    var tableView: UITableView!
    var dataSource = FakeDataSource()
    var cell: ItemCell!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "ItemListViewController") as! ItemListViewController
        
        controller.loadViewIfNeeded()
        
        tableView = controller.tableView
        dataSource = FakeDataSource()
        tableView?.dataSource = dataSource
        
        cell = tableView?.dequeueReusableCell(
            withIdentifier: "ItemCell",
            for: IndexPath(row: 0, section: 0)) as! ItemCell
    }

    override func tearDown() {
        super.tearDown()
    }
    
    func test_HasNameLabel() {
        XCTAssertTrue(cell.titleLabel.isDescendant(of: cell.contentView))
    }
    
    func test_HasLocationLabel() {
        XCTAssertTrue(cell.locationLabel.isDescendant(of: cell.contentView))
    }
    
    func test_ConfigCell_SetsTitle() {
        cell.configCell(with: ToDoItem(title: "Foo"))
        
        XCTAssertEqual(cell.titleLabel.text, "Foo")
    }
    
    func test_ConfigCell_SetsDate() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let date = dateFormatter.date(from: "08/27/2017")
        let timestamp = date?.timeIntervalSince1970
        
        cell.configCell(with: ToDoItem(title: "Foo",
                                       timestamp: timestamp))
        
        XCTAssertEqual(cell.dateLabel.text, "08/27/2017")
    }
    
    func test_ConfigCell_SetsLocation() {
        let location = Location(name: "Bar")
        cell.configCell(with: ToDoItem(title: "Foo",
                                       location: location))
        
        XCTAssertEqual(cell.locationLabel.text, "Bar")
    }
    
    func test_Title_WhenItemIsChecked_IsStrokeThrough() {
        let location = Location(name: "Bar")
        let item = ToDoItem(title: "Foo",
                            itemDescription: nil,
                            timestamp: 1456150025,
                            location: location)
        
        cell.configCell(with: item, checked: true)
        
        let attributeString = NSAttributedString(string: "Foo",
                                                 attributes: [NSAttributedString.Key.strikethroughStyle: NSUnderlineStyle.single.rawValue])
        
        XCTAssertEqual(cell.titleLabel.attributedText, attributeString)
        XCTAssertNil(cell.locationLabel.text)
        XCTAssertNil(cell.dateLabel.text)
    }
}
