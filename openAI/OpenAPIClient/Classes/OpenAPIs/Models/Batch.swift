//
// Batch.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Batch: Codable, JSONEncodable, Hashable {

    public enum Object: String, Codable, CaseIterable {
        case batch = "batch"
    }
    public enum Status: String, Codable, CaseIterable {
        case validating = "validating"
        case failed = "failed"
        case inProgress = "in_progress"
        case finalizing = "finalizing"
        case completed = "completed"
        case expired = "expired"
        case cancelling = "cancelling"
        case cancelled = "cancelled"
    }
    public var id: String
    /** The object type, which is always `batch`. */
    public var object: Object
    /** The OpenAI API endpoint used by the batch. */
    public var endpoint: String
    public var errors: BatchErrors?
    /** The ID of the input file for the batch. */
    public var inputFileId: String
    /** The time frame within which the batch should be processed. */
    public var completionWindow: String
    /** The current status of the batch. */
    public var status: Status
    /** The ID of the file containing the outputs of successfully executed requests. */
    public var outputFileId: String?
    /** The ID of the file containing the outputs of requests with errors. */
    public var errorFileId: String?
    /** The Unix timestamp (in seconds) for when the batch was created. */
    public var createdAt: Int
    /** The Unix timestamp (in seconds) for when the batch started processing. */
    public var inProgressAt: Int?
    /** The Unix timestamp (in seconds) for when the batch will expire. */
    public var expiresAt: Int?
    /** The Unix timestamp (in seconds) for when the batch started finalizing. */
    public var finalizingAt: Int?
    /** The Unix timestamp (in seconds) for when the batch was completed. */
    public var completedAt: Int?
    /** The Unix timestamp (in seconds) for when the batch failed. */
    public var failedAt: Int?
    /** The Unix timestamp (in seconds) for when the batch expired. */
    public var expiredAt: Int?
    /** The Unix timestamp (in seconds) for when the batch started cancelling. */
    public var cancellingAt: Int?
    /** The Unix timestamp (in seconds) for when the batch was cancelled. */
    public var cancelledAt: Int?
    public var requestCounts: BatchRequestCounts?
    /** Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maximum of 512 characters long.  */
    public var metadata: AnyCodable?

    public init(id: String, object: Object, endpoint: String, errors: BatchErrors? = nil, inputFileId: String, completionWindow: String, status: Status, outputFileId: String? = nil, errorFileId: String? = nil, createdAt: Int, inProgressAt: Int? = nil, expiresAt: Int? = nil, finalizingAt: Int? = nil, completedAt: Int? = nil, failedAt: Int? = nil, expiredAt: Int? = nil, cancellingAt: Int? = nil, cancelledAt: Int? = nil, requestCounts: BatchRequestCounts? = nil, metadata: AnyCodable? = nil) {
        self.id = id
        self.object = object
        self.endpoint = endpoint
        self.errors = errors
        self.inputFileId = inputFileId
        self.completionWindow = completionWindow
        self.status = status
        self.outputFileId = outputFileId
        self.errorFileId = errorFileId
        self.createdAt = createdAt
        self.inProgressAt = inProgressAt
        self.expiresAt = expiresAt
        self.finalizingAt = finalizingAt
        self.completedAt = completedAt
        self.failedAt = failedAt
        self.expiredAt = expiredAt
        self.cancellingAt = cancellingAt
        self.cancelledAt = cancelledAt
        self.requestCounts = requestCounts
        self.metadata = metadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case object
        case endpoint
        case errors
        case inputFileId = "input_file_id"
        case completionWindow = "completion_window"
        case status
        case outputFileId = "output_file_id"
        case errorFileId = "error_file_id"
        case createdAt = "created_at"
        case inProgressAt = "in_progress_at"
        case expiresAt = "expires_at"
        case finalizingAt = "finalizing_at"
        case completedAt = "completed_at"
        case failedAt = "failed_at"
        case expiredAt = "expired_at"
        case cancellingAt = "cancelling_at"
        case cancelledAt = "cancelled_at"
        case requestCounts = "request_counts"
        case metadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(object, forKey: .object)
        try container.encode(endpoint, forKey: .endpoint)
        try container.encodeIfPresent(errors, forKey: .errors)
        try container.encode(inputFileId, forKey: .inputFileId)
        try container.encode(completionWindow, forKey: .completionWindow)
        try container.encode(status, forKey: .status)
        try container.encodeIfPresent(outputFileId, forKey: .outputFileId)
        try container.encodeIfPresent(errorFileId, forKey: .errorFileId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(inProgressAt, forKey: .inProgressAt)
        try container.encodeIfPresent(expiresAt, forKey: .expiresAt)
        try container.encodeIfPresent(finalizingAt, forKey: .finalizingAt)
        try container.encodeIfPresent(completedAt, forKey: .completedAt)
        try container.encodeIfPresent(failedAt, forKey: .failedAt)
        try container.encodeIfPresent(expiredAt, forKey: .expiredAt)
        try container.encodeIfPresent(cancellingAt, forKey: .cancellingAt)
        try container.encodeIfPresent(cancelledAt, forKey: .cancelledAt)
        try container.encodeIfPresent(requestCounts, forKey: .requestCounts)
        try container.encodeIfPresent(metadata, forKey: .metadata)
    }
}

