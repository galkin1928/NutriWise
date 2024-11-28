//
// MessageStreamEventOneOf2.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Occurs when parts of a [Message](/docs/api-reference/messages/object) are being streamed. */
public struct MessageStreamEventOneOf2: Codable, JSONEncodable, Hashable {

    public enum Event: String, Codable, CaseIterable {
        case threadPeriodMessagePeriodDelta = "thread.message.delta"
    }
    public var event: Event
    public var data: MessageDeltaObject

    public init(event: Event, data: MessageDeltaObject) {
        self.event = event
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case event
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(event, forKey: .event)
        try container.encode(data, forKey: .data)
    }
}

