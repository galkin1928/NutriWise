//
// RealtimeServerEventConversationItemCreated.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returned when a conversation item is created. There are several scenarios that produce this event:   - The server is generating a Response, which if successful will produce either one or two Items, which will be of type &#x60;message&#x60; (role &#x60;assistant&#x60;) or type &#x60;function_call&#x60;.   - The input audio buffer has been committed, either by the client or the server (in &#x60;server_vad&#x60; mode). The server will take the content of the input audio buffer and add it to a new user message Item.   - The client has sent a &#x60;conversation.item.create&#x60; event to add a new Item to the Conversation. */
public struct RealtimeServerEventConversationItemCreated: Codable, JSONEncodable, Hashable {

    /** The unique ID of the server event. */
    public var eventId: String
    /** The event type, must be `conversation.item.created`. */
    public var type: String
    /** The ID of the preceding item in the Conversation context, allows the client to understand the order of the conversation. */
    public var previousItemId: String
    public var item: RealtimeConversationItem

    public init(eventId: String, type: String, previousItemId: String, item: RealtimeConversationItem) {
        self.eventId = eventId
        self.type = type
        self.previousItemId = previousItemId
        self.item = item
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventId = "event_id"
        case type
        case previousItemId = "previous_item_id"
        case item
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(eventId, forKey: .eventId)
        try container.encode(type, forKey: .type)
        try container.encode(previousItemId, forKey: .previousItemId)
        try container.encode(item, forKey: .item)
    }
}
