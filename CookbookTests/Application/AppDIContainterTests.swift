//
//  AppDIContainterTests.swift
//  CookbookTests
//
//  Created by Егор Бадмаев on 30.10.2022.
//

import XCTest
@testable import Cookbook

class AppDIContainterTests: XCTestCase {
    
    var appDIContainer: AppDIContainer!
    
    override func setUpWithError() throws {
        appDIContainer = AppDIContainer.shared
    }
    
    override func tearDownWithError() throws {
        appDIContainer = nil
    }
    
    func testResolvingNetworkManager() throws {
        XCTAssertNotNil(appDIContainer.resolveNetworkManager())
    }
    
    func testResolvingCoreDataManager() throws {
        XCTAssertNotNil(appDIContainer.resolveCoreDataManager())
    }
}
