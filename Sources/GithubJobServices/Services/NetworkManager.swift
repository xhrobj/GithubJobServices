//
//  NetworkManager.swift
//  GithubJobServices
//
//
import Foundation

public protocol PositionNetworkManager {
    func fetchPositions(description: String?, page: Int?, apiResponseQueue: DispatchQueue, completion: @escaping ((_ data: [PositionDTO]?,_ error: Error?) -> Void))
}
