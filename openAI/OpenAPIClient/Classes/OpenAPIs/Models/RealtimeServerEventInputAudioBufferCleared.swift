//
// RealtimeServerEventInputAudioBufferCleared.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returned when the input audio buffer is cleared by the client with a &#x60;input_audio_buffer.clear&#x60; event. */
public struct RealtimeServerEventInputAudioBufferCleared: Codable, JSONEncodable, Hashable {

    /** The unique ID of the server event. */
    public var eventId: String
    /** The event type, must be `input_audio_buffer.cleared`. */
    public var type: String

    public init(eventId: String, type: String) {
        self.eventId = eventId
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventId = "event_id"
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(eventId, forKey: .eventId)
        try container.encode(type, forKey: .type)
    }
}

