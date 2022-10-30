//
//  AppDIContainterTests.swift
//  CookbookTests
//
//  Created by Егор Бадмаев on 30.10.2022.
//

import XCTest
@testable import Cookbook

class AppDIContainterTests: XCTestCase {
    
    override func setUpWithError() throws {
    }
    
    override func tearDownWithError() throws {
    }
    
    /// # In tests below, it is checked that the returned object is `nil`.
    
    func testResolvingNetworkManager() throws {
        XCTAssertNotNil(AppDIContainer.shared.resolveNetworkManager())
    }
    
    func testResolvingCoreDataManager() throws {
        XCTAssertNotNil(AppDIContainer.shared.resolveCoreDataManager())
    }
}
