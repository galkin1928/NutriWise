//
// ThreadStreamEventOneOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Occurs when a new [thread](/docs/api-reference/threads/object) is created. */
public struct ThreadStreamEventOneOf: Codable, JSONEncodable, Hashable {

    public enum Event: String, Codable, CaseIterable {
        case threadPeriodCreated = "thread.created"
    }
    /** Whether to enable input audio transcription. */
    public var enabled: Bool?
    public var event: Event
    public var data: ThreadObject

    public init(enabled: Bool? = nil, event: Event, data: ThreadObject) {
        self.enabled = enabled
        self.event = event
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case event
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encode(event, forKey: .event)
        try container.encode(data, forKey: .data)
    }
}
