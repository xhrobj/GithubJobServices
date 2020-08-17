//
//  PositionStorageService.swift
//  GithubJobServices
//
//

import Foundation

public final class PositionStorageService {
    
    private let storageManager: PositionStorageManager
    
    public init(storageManager: PositionStorageManager) {
        self.storageManager = storageManager
    }
    
    public var getAll: [PositionDTO] {
        storageManager.allPositions
    }
    
    public func get(byId id: String) -> PositionDTO? {
        storageManager.getPosition(id: id)
    }
    
    public func search(by searchText: String) -> [PositionDTO] {
        storageManager.findPositions(searchText: searchText)
    }
    
    public func get(byCompany company: String) -> [PositionDTO] {
        storageManager.filterPositions(by: PositionFilter(company: company))
    }
    
    public func save(positions: [PositionDTO]) {
        storageManager.save(positions: positions)
    }
}
