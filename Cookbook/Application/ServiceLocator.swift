//
//  ServiceLocator.swift
//  Cookbook
//
//  Created by Егор Бадмаев on 28.10.2022.
//

import Networking
import Persistence

/// Class responsible for providing dependencies of the application.
final class ServiceLocator {
    
    // MARK: - Public Properties
    
    /// Shared instance of this class.
    public static let shared = ServiceLocator()
    
    // MARK: - Private Properties
    
    /// Core Data Manager. It is responsible for all operations connected with persistance.
    private let coreDataManager: CoreDataManagerProtocol = CoreDataManager(containerName: "Cookbook")
    
    /// Network Manager. It is responsible for all network requests of this app.
    private let networkManager: NetworkManagerProtocol = {
        let configuration = URLSessionConfiguration.default
        let urlSession = URLSession(configuration: configuration)
        let decoder = JSONDecoder()
        return NetworkManager(session: urlSession, decoder: decoder)
    }()
    
    // MARK: - Init
    
    /// Private initializer for singleton.
    private init() {}
    
    // MARK: - Internal Methods
    
    /// Method that resolves and provides us `NetworkManager` object.
    ///
    /// - Returns: `NetworkManager`` instance.
    func resolveNetworkManager() -> NetworkManagerProtocol {
        return networkManager
    }
    
    /// Method that resolves and provides us `CoreDataManager` object.
    ///
    /// - Returns: `CoreDataManager` instance.
    func resolveCoreDataManager() -> CoreDataManagerProtocol {
        return coreDataManager
    }
}
