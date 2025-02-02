//
// RealtimeServerEventConversationItemInputAudioTranscriptionFailed.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returned when input audio transcription is configured, and a transcription request for a user message failed. These events are separate from other &#x60;error&#x60; events so that the client can identify the related Item. */
public struct RealtimeServerEventConversationItemInputAudioTranscriptionFailed: Codable, JSONEncodable, Hashable {

    /** The unique ID of the server event. */
    public var eventId: String
    /** The event type, must be `conversation.item.input_audio_transcription.failed`. */
    public var type: String
    /** The ID of the user message item. */
    public var itemId: String
    /** The index of the content part containing the audio. */
    public var contentIndex: Int
    public var error: RealtimeServerEventConversationItemInputAudioTranscriptionFailedError

    public init(eventId: String, type: String, itemId: String, contentIndex: Int, error: RealtimeServerEventConversationItemInputAudioTranscriptionFailedError) {
        self.eventId = eventId
        self.type = type
        self.itemId = itemId
        self.contentIndex = contentIndex
        self.error = error
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventId = "event_id"
        case type
        case itemId = "item_id"
        case contentIndex = "content_index"
        case error
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(eventId, forKey: .eventId)
        try container.encode(type, forKey: .type)
        try container.encode(itemId, forKey: .itemId)
        try container.encode(contentIndex, forKey: .contentIndex)
        try container.encode(error, forKey: .error)
    }
}

