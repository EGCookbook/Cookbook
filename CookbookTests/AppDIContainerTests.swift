//
//  AppDIContainerTests.swift
//  CookbookTests
//
//  Created by Егор Бадмаев on 30.10.2022.
//

import XCTest
@testable import Cookbook

class AppDIContainerTests: XCTestCase {
    
    override func setUpWithError() throws {
    }
    
    override func tearDownWithError() throws {
    }
    
    /// We test that we can access dependencies inside `AppDIContainer`.
    func testMakingDefaultAppDIContainer() throws {
        let appDIContainer = AppDIContainer.makeDefault()
        XCTAssertNoThrow(appDIContainer.networkManager)
        XCTAssertNoThrow(appDIContainer.coreDataManager)
    }
}
