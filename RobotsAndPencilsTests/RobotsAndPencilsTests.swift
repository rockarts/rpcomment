//
//  RobotsAndPencilsTests.swift
//  RobotsAndPencilsTests
//
//  Created by Steven Rockarts on 2019-03-20.
//  Copyright © 2019 Figure4Software. All rights reserved.
//

import XCTest
@testable import RobotsAndPencils

class RobotsAndPencilsTests: XCTestCase {

    var dataStore: DataStore?
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        dataStore = LocalDataStore()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSaveToLocalDataStore() {
        dataStore?.save(comment: RPComment(id: 1, text: "test"))
        let result = dataStore?.readAll()
        XCTAssert(result?.count == 1)
        XCTAssert(result?[0].id == 1)
        XCTAssert(result?[0].text == "test")
    }
}
