//
// VectorStoreFileObject.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A list of files attached to a vector store. */
public struct VectorStoreFileObject: Codable, JSONEncodable, Hashable {

    public enum Object: String, Codable, CaseIterable {
        case vectorStorePeriodFile = "vector_store.file"
    }
    public enum Status: String, Codable, CaseIterable {
        case inProgress = "in_progress"
        case completed = "completed"
        case cancelled = "cancelled"
        case failed = "failed"
    }
    /** The identifier, which can be referenced in API endpoints. */
    public var id: String
    /** The object type, which is always `vector_store.file`. */
    public var object: Object
    /** The total vector store usage in bytes. Note that this may be different from the original file size. */
    public var usageBytes: Int
    /** The Unix timestamp (in seconds) for when the vector store file was created. */
    public var createdAt: Int
    /** The ID of the [vector store](/docs/api-reference/vector-stores/object) that the [File](/docs/api-reference/files) is attached to. */
    public var vectorStoreId: String
    /** The status of the vector store file, which can be either `in_progress`, `completed`, `cancelled`, or `failed`. The status `completed` indicates that the vector store file is ready for use. */
    public var status: Status
    public var lastError: VectorStoreFileObjectLastError?
    public var chunkingStrategy: VectorStoreFileObjectChunkingStrategy?

    public init(id: String, object: Object, usageBytes: Int, createdAt: Int, vectorStoreId: String, status: Status, lastError: VectorStoreFileObjectLastError?, chunkingStrategy: VectorStoreFileObjectChunkingStrategy? = nil) {
        self.id = id
        self.object = object
        self.usageBytes = usageBytes
        self.createdAt = createdAt
        self.vectorStoreId = vectorStoreId
        self.status = status
        self.lastError = lastError
        self.chunkingStrategy = chunkingStrategy
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case object
        case usageBytes = "usage_bytes"
        case createdAt = "created_at"
        case vectorStoreId = "vector_store_id"
        case status
        case lastError = "last_error"
        case chunkingStrategy = "chunking_strategy"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(object, forKey: .object)
        try container.encode(usageBytes, forKey: .usageBytes)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(vectorStoreId, forKey: .vectorStoreId)
        try container.encode(status, forKey: .status)
        try container.encode(lastError, forKey: .lastError)
        try container.encodeIfPresent(chunkingStrategy, forKey: .chunkingStrategy)
    }
}

