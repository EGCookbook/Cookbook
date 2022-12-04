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
    
    /// Core Data model's specified name.
    private let coreDataContainerName = "Cookbook"
    /// Core Data Manager. It is responsible for all operations connected with persistance.
    private lazy var coreDataManager: CoreDataManagerProtocol = CoreDataManager(containerName: coreDataContainerName)
    
    /// `URLSessionConfiguration` for ``NetworkManager``.
    private let networkConfiguration = URLSessionConfiguration.default
    /// Network Manager. It is responsible for all network requests of this app.
    private lazy var networkManager: NetworkManagerProtocol = {
        var urlSession = URLSession(configuration: networkConfiguration)
        let networkManager = NetworkManager(session: urlSession)
        return networkManager
    }()
    
    // MARK: - Init
    
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
