//
//  ServiceLocatorTests.swift
//  CookbookTests
//
//  Created by Егор Бадмаев on 30.10.2022.
//

import XCTest
@testable import Cookbook

class ServiceLocatorTests: XCTestCase {
    
    override func setUpWithError() throws {
    }
    
    override func tearDownWithError() throws {
    }
    
    /// # In tests below, it is checked that the returned object is `nil`.
    
    func testResolvingNetworkManager() throws {
        XCTAssertNotNil(ServiceLocator.shared.resolveNetworkManager())
    }
    
    func testResolvingCoreDataManager() throws {
        XCTAssertNotNil(ServiceLocator.shared.resolveCoreDataManager())
    }
}
