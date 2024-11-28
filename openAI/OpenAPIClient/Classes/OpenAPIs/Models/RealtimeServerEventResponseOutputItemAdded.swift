//
// RealtimeServerEventResponseOutputItemAdded.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returned when a new Item is created during Response generation. */
public struct RealtimeServerEventResponseOutputItemAdded: Codable, JSONEncodable, Hashable {

    /** The unique ID of the server event. */
    public var eventId: String
    /** The event type, must be `response.output_item.added`. */
    public var type: String
    /** The ID of the Response to which the item belongs. */
    public var responseId: String
    /** The index of the output item in the Response. */
    public var outputIndex: Int
    public var item: RealtimeConversationItem

    public init(eventId: String, type: String, responseId: String, outputIndex: Int, item: RealtimeConversationItem) {
        self.eventId = eventId
        self.type = type
        self.responseId = responseId
        self.outputIndex = outputIndex
        self.item = item
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventId = "event_id"
        case type
        case responseId = "response_id"
        case outputIndex = "output_index"
        case item
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(eventId, forKey: .eventId)
        try container.encode(type, forKey: .type)
        try container.encode(responseId, forKey: .responseId)
        try container.encode(outputIndex, forKey: .outputIndex)
        try container.encode(item, forKey: .item)
    }
}
