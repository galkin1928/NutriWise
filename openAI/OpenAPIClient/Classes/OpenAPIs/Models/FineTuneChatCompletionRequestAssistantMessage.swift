//
// FineTuneChatCompletionRequestAssistantMessage.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FineTuneChatCompletionRequestAssistantMessage: Codable, JSONEncodable, Hashable {

    public enum Role: String, Codable, CaseIterable {
        case assistant = "assistant"
    }
    public enum Weight: Int, Codable, CaseIterable {
        case _0 = 0
        case _1 = 1
    }
    public var content: ChatCompletionRequestAssistantMessageContent?
    /** The refusal message by the assistant. */
    public var refusal: String?
    /** The role of the messages author, in this case `assistant`. */
    public var role: Role
    /** An optional name for the participant. Provides the model information to differentiate between participants of the same role. */
    public var name: String?
    public var audio: ChatCompletionRequestAssistantMessageAudio?
    /** The tool calls generated by the model, such as function calls. */
    public var toolCalls: [ChatCompletionMessageToolCall]?
    @available(*, deprecated, message: "This property is deprecated.")
    public var functionCall: ChatCompletionRequestAssistantMessageFunctionCall?
    /** Controls whether the assistant message is trained against (0 or 1) */
    public var weight: Weight?

    public init(content: ChatCompletionRequestAssistantMessageContent? = nil, refusal: String? = nil, role: Role, name: String? = nil, audio: ChatCompletionRequestAssistantMessageAudio? = nil, toolCalls: [ChatCompletionMessageToolCall]? = nil, functionCall: ChatCompletionRequestAssistantMessageFunctionCall? = nil, weight: Weight? = nil) {
        self.content = content
        self.refusal = refusal
        self.role = role
        self.name = name
        self.audio = audio
        self.toolCalls = toolCalls
        self.functionCall = functionCall
        self.weight = weight
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case content
        case refusal
        case role
        case name
        case audio
        case toolCalls = "tool_calls"
        case functionCall = "function_call"
        case weight
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(refusal, forKey: .refusal)
        try container.encode(role, forKey: .role)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(audio, forKey: .audio)
        try container.encodeIfPresent(toolCalls, forKey: .toolCalls)
        try container.encodeIfPresent(functionCall, forKey: .functionCall)
        try container.encodeIfPresent(weight, forKey: .weight)
    }
}
