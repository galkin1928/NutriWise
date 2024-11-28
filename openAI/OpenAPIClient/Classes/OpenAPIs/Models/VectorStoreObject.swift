//
// VectorStoreObject.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A vector store is a collection of processed files can be used by the &#x60;file_search&#x60; tool. */
public struct VectorStoreObject: Codable, JSONEncodable, Hashable {

    public enum Object: String, Codable, CaseIterable {
        case vectorStore = "vector_store"
    }
    public enum Status: String, Codable, CaseIterable {
        case expired = "expired"
        case inProgress = "in_progress"
        case completed = "completed"
    }
    /** The identifier, which can be referenced in API endpoints. */
    public var id: String
    /** The object type, which is always `vector_store`. */
    public var object: Object
    /** The Unix timestamp (in seconds) for when the vector store was created. */
    public var createdAt: Int
    /** The name of the vector store. */
    public var name: String
    /** The total number of bytes used by the files in the vector store. */
    public var usageBytes: Int
    public var fileCounts: VectorStoreObjectFileCounts
    /** The status of the vector store, which can be either `expired`, `in_progress`, or `completed`. A status of `completed` indicates that the vector store is ready for use. */
    public var status: Status
    public var expiresAfter: VectorStoreExpirationAfter?
    /** The Unix timestamp (in seconds) for when the vector store will expire. */
    public var expiresAt: Int?
    /** The Unix timestamp (in seconds) for when the vector store was last active. */
    public var lastActiveAt: Int?
    /** Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maximum of 512 characters long.  */
    public var metadata: AnyCodable?

    public init(id: String, object: Object, createdAt: Int, name: String, usageBytes: Int, fileCounts: VectorStoreObjectFileCounts, status: Status, expiresAfter: VectorStoreExpirationAfter? = nil, expiresAt: Int? = nil, lastActiveAt: Int?, metadata: AnyCodable?) {
        self.id = id
        self.object = object
        self.createdAt = createdAt
        self.name = name
        self.usageBytes = usageBytes
        self.fileCounts = fileCounts
        self.status = status
        self.expiresAfter = expiresAfter
        self.expiresAt = expiresAt
        self.lastActiveAt = lastActiveAt
        self.metadata = metadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case object
        case createdAt = "created_at"
        case name
        case usageBytes = "usage_bytes"
        case fileCounts = "file_counts"
        case status
        case expiresAfter = "expires_after"
        case expiresAt = "expires_at"
        case lastActiveAt = "last_active_at"
        case metadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(object, forKey: .object)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(name, forKey: .name)
        try container.encode(usageBytes, forKey: .usageBytes)
        try container.encode(fileCounts, forKey: .fileCounts)
        try container.encode(status, forKey: .status)
        try container.encodeIfPresent(expiresAfter, forKey: .expiresAfter)
        try container.encodeIfPresent(expiresAt, forKey: .expiresAt)
        try container.encode(lastActiveAt, forKey: .lastActiveAt)
        try container.encode(metadata, forKey: .metadata)
    }
}

