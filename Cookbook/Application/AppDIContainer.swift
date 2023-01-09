//
//  AppDIContainer.swift
//  Cookbook
//
//  Created by Егор Бадмаев on 28.10.2022.
//

import Networking
import Persistence

/// Class responsible for providing dependencies of the application.
final class AppDIContainer {
    
    /// Core Data Manager. It is responsible for all operations connected with persistance.
    let coreDataManager: CoreDataManagerProtocol
    
    /// Network Manager. It is responsible for all network requests of this app.
    let networkManager: NetworkManagerProtocol
    
    // MARK: - Init
    
    private init(networkManager: NetworkManagerProtocol, coreDataManager: CoreDataManagerProtocol) {
        self.networkManager = networkManager
        self.coreDataManager = coreDataManager
    }
    
    /// Method that resolves and provides us `NetworkManager` object.
    ///
    /// - Returns: App DI containter with default services' settings
    static func makeDefault() -> AppDIContainer {
        let configuration = URLSessionConfiguration.default
        let urlSession = URLSession(configuration: configuration)
        let decoder = JSONDecoder()
        return AppDIContainer(networkManager: NetworkManager(session: urlSession, decoder: decoder),
                              coreDataManager: CoreDataManager(containerName: "Cookbook"))
    }
}
