//
//  AppCoordinatorTests.swift
//  CookbookTests
//
//  Created by Егор Бадмаев on 01.11.2022.
//

import XCTest
@testable import Cookbook

class AppCoordinatorTests: XCTestCase {
    
    var window: UIWindow!
    var appCoordinator: AppCoordinator!
    
    override func setUpWithError() throws {
        window = UIWindow(frame: .zero)
        appCoordinator = AppCoordinator(window: window)
    }
    
    override func tearDownWithError() throws {
        window = nil
        appCoordinator = nil
    }
    
    /// This test simulates start of the application and checks that there is new view controller in `window.rootViewController`.
    func testStartMethod() throws {
        XCTAssertNoThrow(appCoordinator.start())
        
        XCTAssertNotNil(window.rootViewController)
    }
}
