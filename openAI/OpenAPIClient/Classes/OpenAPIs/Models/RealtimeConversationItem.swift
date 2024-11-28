//
// RealtimeConversationItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The item to add to the conversation. */
public struct RealtimeConversationItem: Codable, JSONEncodable, Hashable {

    /** The unique ID of the item, this can be generated by the client to help manage server-side context, but is not required because the server will generate one if not provided. */
    public var id: String?
    /** The type of the item (`message`, `function_call`, `function_call_output`). */
    public var type: String?
    /** The status of the item (`completed`, `incomplete`). These have no effect on the conversation, but are accepted for consistency with the `conversation.item.created` event. */
    public var status: String?
    /** The role of the message sender (`user`, `assistant`, `system`), only applicable for `message` items. */
    public var role: String?
    /** The content of the message, applicable for `message` items. Message items with a role of `system` support only `input_text` content, message items of role `user` support `input_text` and `input_audio` content, and message items of role `assistant` support `text` content. */
    public var content: [RealtimeConversationItemContentInner]?
    /** The ID of the function call (for `function_call` and `function_call_output` items). If passed on a `function_call_output` item, the server will check that a `function_call` item with the same ID exists in the conversation history. */
    public var callId: String?
    /** The name of the function being called (for `function_call` items). */
    public var name: String?
    /** The arguments of the function call (for `function_call` items). */
    public var arguments: String?
    /** The output of the function call (for `function_call_output` items). */
    public var output: String?

    public init(id: String? = nil, type: String? = nil, status: String? = nil, role: String? = nil, content: [RealtimeConversationItemContentInner]? = nil, callId: String? = nil, name: String? = nil, arguments: String? = nil, output: String? = nil) {
        self.id = id
        self.type = type
        self.status = status
        self.role = role
        self.content = content
        self.callId = callId
        self.name = name
        self.arguments = arguments
        self.output = output
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case status
        case role
        case content
        case callId = "call_id"
        case name
        case arguments
        case output
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(role, forKey: .role)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(callId, forKey: .callId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(arguments, forKey: .arguments)
        try container.encodeIfPresent(output, forKey: .output)
    }
}

