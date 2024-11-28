//
// VectorStoreFileBatchObjectFileCounts.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VectorStoreFileBatchObjectFileCounts: Codable, JSONEncodable, Hashable {

    /** The number of files that are currently being processed. */
    public var inProgress: Int
    /** The number of files that have been processed. */
    public var completed: Int
    /** The number of files that have failed to process. */
    public var failed: Int
    /** The number of files that where cancelled. */
    public var cancelled: Int
    /** The total number of files. */
    public var total: Int

    public init(inProgress: Int, completed: Int, failed: Int, cancelled: Int, total: Int) {
        self.inProgress = inProgress
        self.completed = completed
        self.failed = failed
        self.cancelled = cancelled
        self.total = total
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inProgress = "in_progress"
        case completed
        case failed
        case cancelled
        case total
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(inProgress, forKey: .inProgress)
        try container.encode(completed, forKey: .completed)
        try container.encode(failed, forKey: .failed)
        try container.encode(cancelled, forKey: .cancelled)
        try container.encode(total, forKey: .total)
    }
}

