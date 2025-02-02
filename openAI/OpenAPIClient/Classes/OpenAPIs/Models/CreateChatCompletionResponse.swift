//
// CreateChatCompletionResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represents a chat completion response returned by model, based on the provided input. */
public struct CreateChatCompletionResponse: Codable, JSONEncodable, Hashable {

    public enum ServiceTier: String, Codable, CaseIterable {
        case scale = "scale"
        case _default = "default"
    }
    public enum Object: String, Codable, CaseIterable {
        case chatPeriodCompletion = "chat.completion"
    }
    /** A unique identifier for the chat completion. */
    public var id: String
    /** A list of chat completion choices. Can be more than one if `n` is greater than 1. */
    public var choices: [CreateChatCompletionResponseChoicesInner]
    /** The Unix timestamp (in seconds) of when the chat completion was created. */
    public var created: Int
    /** The model used for the chat completion. */
    public var model: String
    /** The service tier used for processing the request. This field is only included if the `service_tier` parameter is specified in the request. */
    public var serviceTier: ServiceTier?
    /** This fingerprint represents the backend configuration that the model runs with.  Can be used in conjunction with the `seed` request parameter to understand when backend changes have been made that might impact determinism.  */
    public var systemFingerprint: String?
    /** The object type, which is always `chat.completion`. */
    public var object: Object
    public var usage: CompletionUsage?

    public init(id: String, choices: [CreateChatCompletionResponseChoicesInner], created: Int, model: String, serviceTier: ServiceTier? = nil, systemFingerprint: String? = nil, object: Object, usage: CompletionUsage? = nil) {
        self.id = id
        self.choices = choices
        self.created = created
        self.model = model
        self.serviceTier = serviceTier
        self.systemFingerprint = systemFingerprint
        self.object = object
        self.usage = usage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case choices
        case created
        case model
        case serviceTier = "service_tier"
        case systemFingerprint = "system_fingerprint"
        case object
        case usage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(choices, forKey: .choices)
        try container.encode(created, forKey: .created)
        try container.encode(model, forKey: .model)
        try container.encodeIfPresent(serviceTier, forKey: .serviceTier)
        try container.encodeIfPresent(systemFingerprint, forKey: .systemFingerprint)
        try container.encode(object, forKey: .object)
        try container.encodeIfPresent(usage, forKey: .usage)
    }
}

