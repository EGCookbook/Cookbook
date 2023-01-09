//
//  AppDelegate.swift
//  Cookbook
//
//  Created by Егор Бадмаев on 15.10.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    // MARK: - Private Properties
    
    private let appDIContainter = AppDIContainer.makeDefault()
    private var coordinator: AppCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        coordinator = AppCoordinator(window: window, appDIContainer: appDIContainter)
        coordinator?.start()
        self.window = window
        
        return true
    }
}
