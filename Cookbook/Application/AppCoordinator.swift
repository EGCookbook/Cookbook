//
//  AppCoordinator.swift
//  Cookbook
//
//  Created by Егор Бадмаев on 27.10.2022.
//

import UIKit
import Common
import Discover
import Search
import Personal
import Resources
import Onboarding
import Networking
import Persistence

/// An object responsible for setting the modules up.
final class AppCoordinator {
    
    // MARK: - Private Properties
    
    /// `UIWindow` of the application, provided from the ``AppDelegate``.
    private let window: UIWindow
    /// An obect responsible for DI.
    private let appDIContainer: AppDIContainer
    /// Root view controller of the application
    private let tabBarController = UITabBarController()
    /// View controllers to set in the tab bar controller
    private var viewControllers = [UIViewController]()
    
    // MARK: - Init
    
    /// Creates app coordinator with specified window and application DI container.
    init(window: UIWindow, appDIContainer: AppDIContainer) {
        self.window = window
        self.appDIContainer = appDIContainer
    }
    
    /// This method setup tab bar controller with 3 modules and set root view controller for the `UIWindow`.
    func start() {
        Fonts.registerFonts()
        window.tintColor = Colors.appColor
        
        setupDiscover()
        setupSearch()
        setupPersonal()
        tabBarController.setViewControllers(viewControllers, animated: false)
        
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
        
        if !UserDefaults.hasOnboarded {
            openOnboarding()
        }
    }
    
    /// Assembles and presents _Onboarding_ module.
    func openOnboarding() {
        let context = OnboardingContext(moduleOutput: self)
        let assembly = OnboardingAssembly.assemble(with: context)
        tabBarController.present(assembly.viewController, animated: true)
    }
}

// MARK: - OnboardingModuleOutput

extension AppCoordinator: OnboardingModuleOutput {
    
    /// Dismisses _Onboarding_ module.
    func onboardingModuleDidFinish() {
        tabBarController.presentedViewController?.dismiss(animated: true)
    }
}

// MARK: - Helper methods

private extension AppCoordinator {
    func setupDiscover() {
        let context = BaseRecipesContext(networkManager: appDIContainer.networkManager)
        let assembly = DiscoverAssembly.assemble(with: context)
        let discoverViewController = createNavController(viewController: assembly.viewController, itemName: Texts.Discover.title, itemImage: Images.TabBarItems.discover)
        viewControllers.append(discoverViewController)
    }
    
    func setupSearch() {
        let context = BaseRecipesContext(networkManager: appDIContainer.networkManager)
        let assembly = SearchAssembly.assemble(with: context)
        let historyViewController = createNavController(viewController: assembly.viewController, itemName: Texts.Search.title, itemImage: Images.TabBarItems.search)
        viewControllers.append(historyViewController)
    }
    
    func setupPersonal() {
        let context = PersonalContext(coreDataManager: appDIContainer.coreDataManager)
        let assembly = PersonalAssembly.assemble(with: context)
        let analyticsViewController = createNavController(viewController: assembly.viewController, itemName: Texts.Personal.title, itemImage: Images.TabBarItems.person)
        viewControllers.append(analyticsViewController)
    }
    
    /// Creates navigation controller and set tab bar item to it.
    func createNavController(viewController: UIViewController, itemName: String, itemImage: UIImage?) -> UINavigationController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem = UITabBarItem(title: itemName, image: itemImage, tag: 0)
        navController.navigationBar.largeTitleTextAttributes = [.font: Fonts.largeTitle()]
        navController.navigationBar.titleTextAttributes = [.font: Fonts.headline()]
        navController.navigationBar.prefersLargeTitles = true
        return navController
    }
}

// MARK: - Modules' contexts

private extension AppCoordinator {
    
    /// Wrapper over `BaseRecipes` module requirements.
    struct BaseRecipesContext: BaseRecipesDependenciesProtocol {
        weak var moduleOutput: BaseRecipesModuleOutput?
        let networkManager: NetworkManagerProtocol
        
        init(moduleOutput: BaseRecipesModuleOutput? = nil, networkManager: NetworkManagerProtocol) {
            self.moduleOutput = moduleOutput
            self.networkManager = networkManager
        }
    }
    
    /// Wrapper over `Personal` module requirements.
    struct PersonalContext: PersonalDependenciesProtocol {
        weak var moduleOutput: PersonalModuleOutput?
        let coreDataManager: CoreDataManagerProtocol
        
        init(moduleOutput: PersonalModuleOutput? = nil, coreDataManager: CoreDataManagerProtocol) {
            self.moduleOutput = moduleOutput
            self.coreDataManager = coreDataManager
        }
    }
}
