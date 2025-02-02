//
// RunStepObject.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represents a step in execution of a run.  */
public struct RunStepObject: Codable, JSONEncodable, Hashable {

    public enum Object: String, Codable, CaseIterable {
        case threadPeriodRunPeriodStep = "thread.run.step"
    }
    public enum ModelType: String, Codable, CaseIterable {
        case messageCreation = "message_creation"
        case toolCalls = "tool_calls"
    }
    public enum Status: String, Codable, CaseIterable {
        case inProgress = "in_progress"
        case cancelled = "cancelled"
        case failed = "failed"
        case completed = "completed"
        case expired = "expired"
    }
    /** The identifier of the run step, which can be referenced in API endpoints. */
    public var id: String
    /** The object type, which is always `thread.run.step`. */
    public var object: Object
    /** The Unix timestamp (in seconds) for when the run step was created. */
    public var createdAt: Int
    /** The ID of the [assistant](/docs/api-reference/assistants) associated with the run step. */
    public var assistantId: String
    /** The ID of the [thread](/docs/api-reference/threads) that was run. */
    public var threadId: String
    /** The ID of the [run](/docs/api-reference/runs) that this run step is a part of. */
    public var runId: String
    /** The type of run step, which can be either `message_creation` or `tool_calls`. */
    public var type: ModelType
    /** The status of the run step, which can be either `in_progress`, `cancelled`, `failed`, `completed`, or `expired`. */
    public var status: Status
    public var stepDetails: RunStepObjectStepDetails
    public var lastError: RunStepObjectLastError?
    /** The Unix timestamp (in seconds) for when the run step expired. A step is considered expired if the parent run is expired. */
    public var expiredAt: Int?
    /** The Unix timestamp (in seconds) for when the run step was cancelled. */
    public var cancelledAt: Int?
    /** The Unix timestamp (in seconds) for when the run step failed. */
    public var failedAt: Int?
    /** The Unix timestamp (in seconds) for when the run step completed. */
    public var completedAt: Int?
    /** Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maximum of 512 characters long.  */
    public var metadata: AnyCodable?
    public var usage: RunStepCompletionUsage?

    public init(id: String, object: Object, createdAt: Int, assistantId: String, threadId: String, runId: String, type: ModelType, status: Status, stepDetails: RunStepObjectStepDetails, lastError: RunStepObjectLastError?, expiredAt: Int?, cancelledAt: Int?, failedAt: Int?, completedAt: Int?, metadata: AnyCodable?, usage: RunStepCompletionUsage?) {
        self.id = id
        self.object = object
        self.createdAt = createdAt
        self.assistantId = assistantId
        self.threadId = threadId
        self.runId = runId
        self.type = type
        self.status = status
        self.stepDetails = stepDetails
        self.lastError = lastError
        self.expiredAt = expiredAt
        self.cancelledAt = cancelledAt
        self.failedAt = failedAt
        self.completedAt = completedAt
        self.metadata = metadata
        self.usage = usage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case object
        case createdAt = "created_at"
        case assistantId = "assistant_id"
        case threadId = "thread_id"
        case runId = "run_id"
        case type
        case status
        case stepDetails = "step_details"
        case lastError = "last_error"
        case expiredAt = "expired_at"
        case cancelledAt = "cancelled_at"
        case failedAt = "failed_at"
        case completedAt = "completed_at"
        case metadata
        case usage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(object, forKey: .object)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(assistantId, forKey: .assistantId)
        try container.encode(threadId, forKey: .threadId)
        try container.encode(runId, forKey: .runId)
        try container.encode(type, forKey: .type)
        try container.encode(status, forKey: .status)
        try container.encode(stepDetails, forKey: .stepDetails)
        try container.encode(lastError, forKey: .lastError)
        try container.encode(expiredAt, forKey: .expiredAt)
        try container.encode(cancelledAt, forKey: .cancelledAt)
        try container.encode(failedAt, forKey: .failedAt)
        try container.encode(completedAt, forKey: .completedAt)
        try container.encode(metadata, forKey: .metadata)
        try container.encode(usage, forKey: .usage)
    }
}

