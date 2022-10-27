//
//  AppCoordinator.swift
//  Cookbook
//
//  Created by Егор Бадмаев on 27.10.2022.
//

import UIKit
import Discover
import Search
import Personal
import Resources

final class AppCoordinator {
    
    // MARK: - Private Properties
    
    /// `UIWindow` of the application, provided from the ``SceneDelegate``
    private let window: UIWindow
    /// Root view controller of the application
    private let tabBarController = UITabBarController()
    /// View controllers to set in the tab bar controller
    private var viewControllers = [UIViewController]()
    
    // MARK: - Init
    
    init(window: UIWindow) {
        self.window = window
    }
    
    /// This method setup tab bar controller with 3 modules and set root view controller for the `UIWindow`
    func start() {
        setupDiscover()
        setupSearch()
        setupPersonal()
        tabBarController.setViewControllers(viewControllers, animated: false)
        
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
    }
}

// MARK: - Helper methods

private extension AppCoordinator {
    func setupDiscover() {
        let context = DiscoverContext(moduleOutput: nil)
        let assembly = DiscoverAssembly.assemble(with: context)
        let discoverViewController = createNavController(viewController: assembly.viewController, itemName: Texts.Discover.title, itemImage: Images.TabBarItems.discover)
        viewControllers.append(discoverViewController)
    }
    
    func setupSearch() {
        let context = SearchContext(moduleOutput: nil)
        let assembly = SearchAssembly.assemble(with: context)
        let historyViewController = createNavController(viewController: assembly.viewController, itemName: Texts.Search.title, itemImage: Images.TabBarItems.search)
        viewControllers.append(historyViewController)
    }

    func setupPersonal() {
        let context = PersonalContext(moduleOutput: nil)
        let assembly = PersonalAssembly.assemble(with: context)
        let analyticsViewController = createNavController(viewController: assembly.viewController, itemName: Texts.Personal.title, itemImage: Images.TabBarItems.person)
        viewControllers.append(analyticsViewController)
    }
    
    /// Creates navigation controller and set tab bar item to it
    func createNavController(viewController: UIViewController, itemName: String, itemImage: UIImage?) -> UINavigationController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem = UITabBarItem(title: itemName, image: itemImage, tag: 0)
        navController.navigationBar.prefersLargeTitles = true
        return navController
    }
}
