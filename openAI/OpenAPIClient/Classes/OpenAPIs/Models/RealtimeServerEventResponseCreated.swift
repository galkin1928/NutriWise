//
// RealtimeServerEventResponseCreated.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returned when a new Response is created. The first event of response creation, where the response is in an initial state of &#x60;in_progress&#x60;. */
public struct RealtimeServerEventResponseCreated: Codable, JSONEncodable, Hashable {

    /** The unique ID of the server event. */
    public var eventId: String
    /** The event type, must be `response.created`. */
    public var type: String
    public var response: RealtimeResponse

    public init(eventId: String, type: String, response: RealtimeResponse) {
        self.eventId = eventId
        self.type = type
        self.response = response
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventId = "event_id"
        case type
        case response
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(eventId, forKey: .eventId)
        try container.encode(type, forKey: .type)
        try container.encode(response, forKey: .response)
    }
}

