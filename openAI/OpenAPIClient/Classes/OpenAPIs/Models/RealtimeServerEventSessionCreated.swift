//
// RealtimeServerEventSessionCreated.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returned when a Session is created. Emitted automatically when a new connection is established as the first server event. This event will contain the default Session configuration. */
public struct RealtimeServerEventSessionCreated: Codable, JSONEncodable, Hashable {

    /** The unique ID of the server event. */
    public var eventId: String
    /** The event type, must be `session.created`. */
    public var type: String
    public var session: RealtimeSession

    public init(eventId: String, type: String, session: RealtimeSession) {
        self.eventId = eventId
        self.type = type
        self.session = session
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventId = "event_id"
        case type
        case session
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(eventId, forKey: .eventId)
        try container.encode(type, forKey: .type)
        try container.encode(session, forKey: .session)
    }
}

