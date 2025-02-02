//
// RealtimeServerEventRateLimitsUpdated.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Emitted at the beginning of a Response to indicate the updated rate limits. When a Response is created some tokens will be \&quot;reserved\&quot; for the output tokens, the rate limits shown here reflect that reservation, which is then adjusted accordingly once the Response is completed. */
public struct RealtimeServerEventRateLimitsUpdated: Codable, JSONEncodable, Hashable {

    /** The unique ID of the server event. */
    public var eventId: String
    /** The event type, must be `rate_limits.updated`. */
    public var type: String
    /** List of rate limit information. */
    public var rateLimits: [RealtimeServerEventRateLimitsUpdatedRateLimitsInner]

    public init(eventId: String, type: String, rateLimits: [RealtimeServerEventRateLimitsUpdatedRateLimitsInner]) {
        self.eventId = eventId
        self.type = type
        self.rateLimits = rateLimits
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventId = "event_id"
        case type
        case rateLimits = "rate_limits"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(eventId, forKey: .eventId)
        try container.encode(type, forKey: .type)
        try container.encode(rateLimits, forKey: .rateLimits)
    }
}

