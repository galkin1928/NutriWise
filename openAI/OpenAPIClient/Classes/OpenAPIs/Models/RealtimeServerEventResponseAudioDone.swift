//
// RealtimeServerEventResponseAudioDone.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returned when the model-generated audio is done. Also emitted when a Response is interrupted, incomplete, or cancelled. */
public struct RealtimeServerEventResponseAudioDone: Codable, JSONEncodable, Hashable {

    /** The unique ID of the server event. */
    public var eventId: String
    /** The event type, must be \"response.audio.done\". */
    public var type: String
    /** The ID of the response. */
    public var responseId: String
    /** The ID of the item. */
    public var itemId: String
    /** The index of the output item in the response. */
    public var outputIndex: Int
    /** The index of the content part in the item's content array. */
    public var contentIndex: Int

    public init(eventId: String, type: String, responseId: String, itemId: String, outputIndex: Int, contentIndex: Int) {
        self.eventId = eventId
        self.type = type
        self.responseId = responseId
        self.itemId = itemId
        self.outputIndex = outputIndex
        self.contentIndex = contentIndex
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventId = "event_id"
        case type
        case responseId = "response_id"
        case itemId = "item_id"
        case outputIndex = "output_index"
        case contentIndex = "content_index"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(eventId, forKey: .eventId)
        try container.encode(type, forKey: .type)
        try container.encode(responseId, forKey: .responseId)
        try container.encode(itemId, forKey: .itemId)
        try container.encode(outputIndex, forKey: .outputIndex)
        try container.encode(contentIndex, forKey: .contentIndex)
    }
}

