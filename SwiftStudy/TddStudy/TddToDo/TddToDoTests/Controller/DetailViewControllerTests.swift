//
//  DetailViewControllerTests.swift
//  TddToDoTests
//
//  Created by Desenvolvimento on 14/01/20.
//  Copyright © 2020 Raphael Barbosa. All rights reserved.
//

import XCTest
@testable import TddToDo
import CoreLocation

class DetailViewControllerTests: XCTestCase {

    var sut: DetailViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main",
                                      bundle: nil)
        
        sut = storyboard
          .instantiateViewController(
            withIdentifier: "DetailViewController")
          as! DetailViewController
        sut.loadViewIfNeeded()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        sut.itemInfo?.0.removeAll()

    }
    
    func test_HasTitleLabel() {
        let titleLabelIsSubView = sut.titleLabel?.isDescendant(of: sut.view) ?? false
        
        XCTAssertTrue(titleLabelIsSubView)
    }
    
    func test_HasMapView() {
      let mapViewIsSubView =
        sut.mapView?.isDescendant(
          of: sut.view) ?? false
      XCTAssertTrue(mapViewIsSubView)
    }
    
    func test_SettingItemInfo_SetsTextsToLabel() {
        let coordinate = CLLocationCoordinate2DMake(51.2277, 6.7735)
        
        let location = Location(name: "Foo", coordinate: coordinate)
        let item = ToDoItem(title: "Bar",
                            itemDescription: "Baz",
                            timestamp: 1456150025,
                            location: location)
        
        let itemManager = ItemManager()
        itemManager.add(item)
        
        sut.itemInfo = (itemManager, 0)
        
        sut.beginAppearanceTransition(true, animated: true)
        sut.endAppearanceTransition()
        XCTAssertEqual(sut.titleLabel.text, "Bar")
        XCTAssertEqual(sut.dateLabel.text, "02/22/2016")
        XCTAssertEqual(sut.locationLabel.text, "Foo")
        XCTAssertEqual(sut.descriptionLabel.text, "Baz")
        XCTAssertEqualWithAccuracy(sut.mapView.centerCoordinate.latitude,
                                   coordinate.latitude,
                                   accuracy: 0.001)
        XCTAssertEqualWithAccuracy(sut.mapView.centerCoordinate.longitude,
                                   coordinate.longitude,
                                   accuracy: 0.001)
    }
    
    func test_CheckItem_ChecksItemInItemManager() {
        let itemManager = ItemManager()
        itemManager.add(ToDoItem(title: "Foo"))
        
        sut.itemInfo = (itemManager, 0)
        sut.checkItem()
        
        XCTAssertEqual(itemManager.toDoCount, 0)
        XCTAssertEqual(itemManager.doneCount, 1)
    }

}
