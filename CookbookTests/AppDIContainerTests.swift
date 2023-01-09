//
//  AppDIContainerTests.swift
//  CookbookTests
//
//  Created by Егор Бадмаев on 30.10.2022.
//

import XCTest
@testable import Cookbook

class AppDIContainerTests: XCTestCase {
    
    /// SUT.
    var appDIContainer: AppDIContainer!
    let mockNetworkManager = MockNetworkManager()
    let mockCoreDataManager = MockCoreDataManager()
    
    override func setUpWithError() throws {
        appDIContainer = AppDIContainer(networkManager: mockNetworkManager, coreDataManager: mockCoreDataManager)
    }
    
    override func tearDownWithError() throws {
        appDIContainer = nil
    }
    
    /// # In tests below, it is checked that the returned object is `nil`.
    
    func testResolvingNetworkManager() throws {
        XCTAssertNotNil(appDIContainer.makeDefaultNetworkManager())
    }
    
    func testResolvingCoreDataManager() throws {
        XCTAssertNotNil(appDIContainer.makeDefaultCoreDataManager())
    }
}
