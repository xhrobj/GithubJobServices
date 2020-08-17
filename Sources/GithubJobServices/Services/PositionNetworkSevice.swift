//
//  PositionNetworkService.swift
//  GithubJobServices
//
//

import Foundation

public final class PositionNetworkService {
    
    private let apiManager: PositionNetworkManager
    
    public init(apiManager: PositionNetworkManager) {
        self.apiManager = apiManager
    }
    
    public func fetchPositions(description: String?, page: Int?, completion: @escaping ((_ positions: [PositionDTO]?,_ error: Error?) -> Void)) {
        apiManager.fetchPositions(description: description, page: page, apiResponseQueue: DispatchQueue.main, completion: completion)
    }
    
    public func fetchPosition(id: String, completion: @escaping ((_ position: PositionDTO,_ error: Error?) -> Void)) {
        
    }
}
