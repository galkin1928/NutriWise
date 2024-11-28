//
// RealtimeClientEventResponseCreate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** This event instructs the server to create a Response, which means triggering model inference. When in Server VAD mode, the server will create Responses automatically. A Response will include at least one Item, and may have two, in which case the second will be a function call. These Items will be appended to the conversation history. The server will respond with a &#x60;response.created&#x60; event, events for Items and content created, and finally a &#x60;response.done&#x60; event to indicate the Response is complete. The &#x60;response.create&#x60; event includes inference configuration like &#x60;instructions&#x60;, and &#x60;temperature&#x60;. These fields will override the Session&#39;s configuration for this Response only. */
public struct RealtimeClientEventResponseCreate: Codable, JSONEncodable, Hashable {

    /** Optional client-generated ID used to identify this event. */
    public var eventId: String?
    /** The event type, must be `response.create`. */
    public var type: String
    public var response: RealtimeResponse

    public init(eventId: String? = nil, type: String, response: RealtimeResponse) {
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
        try container.encodeIfPresent(eventId, forKey: .eventId)
        try container.encode(type, forKey: .type)
        try container.encode(response, forKey: .response)
    }
}
