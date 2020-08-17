//
//  StorageManager.swift
//  GithubJobServices
//

public struct PositionFilter {
    public var type: String? = nil
    public var company: String? = nil
    public var location: String? = nil
    public var title: String? = nil
}

public protocol PositionStorageManager {
    var allPositions: [PositionDTO] { get }
    func getPosition(id: String) -> PositionDTO?
    func findPositions(searchText: String) -> [PositionDTO]
    func filterPositions(by filter: PositionFilter) -> [PositionDTO]
    func save(positions: [PositionDTO])
}
