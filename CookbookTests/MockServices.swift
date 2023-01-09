//
//  MockServices.swift
//  CookbookTests
//
//  Created by Егор Бадмаев on 09.01.2023.
//

@testable import Networking
@testable import Persistence
@testable import Models

class MockNetworkManager: NetworkManagerProtocol {
    func perform<Model>(request: NetworkRequest, completion: @escaping (Result<Model, NetworkManagerError>) -> Void) where Model : Decodable, Model : Encodable {
    }
    
    func obtainData(request: NetworkRequest, completion: @escaping (Result<Data, NetworkManagerError>) -> Void) {
    }
}

class MockCoreDataManager: CoreDataManagerProtocol {
    func fetchRecipes() -> [Persistence.Recipe]? {
        nil
    }
    
    func fetchRecipe(by data: RecipeData) -> Persistence.Recipe? {
        nil
    }
    
    func createRecipe(with data: RecipeData) {
    }
    
    func update(_ recipe: Persistence.Recipe, with data: RecipeData) {
    }
    
    func delete(_ recipe: Persistence.Recipe) {
    }
    
    func createStep(with data: StepData, for recipe: Persistence.Recipe) {
    }
    
    func update(_ step: Step, with data: StepData) {
    }
    
    func delete(_ step: Step) {
    }
}
