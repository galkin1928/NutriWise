//
// ChatCompletionResponseMessage.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A chat completion message generated by the model. */
public struct ChatCompletionResponseMessage: Codable, JSONEncodable, Hashable {

    public enum Role: String, Codable, CaseIterable {
        case assistant = "assistant"
    }
    /** The contents of the message. */
    public var content: String?
    /** The refusal message generated by the model. */
    public var refusal: String?
    /** The tool calls generated by the model, such as function calls. */
    public var toolCalls: [ChatCompletionMessageToolCall]?
    /** The role of the author of this message. */
    public var role: Role
    @available(*, deprecated, message: "This property is deprecated.")
    public var functionCall: ChatCompletionResponseMessageFunctionCall?
    public var audio: ChatCompletionResponseMessageAudio?

    public init(content: String?, refusal: String?, toolCalls: [ChatCompletionMessageToolCall]? = nil, role: Role, functionCall: ChatCompletionResponseMessageFunctionCall? = nil, audio: ChatCompletionResponseMessageAudio? = nil) {
        self.content = content
        self.refusal = refusal
        self.toolCalls = toolCalls
        self.role = role
        self.functionCall = functionCall
        self.audio = audio
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case content
        case refusal
        case toolCalls = "tool_calls"
        case role
        case functionCall = "function_call"
        case audio
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(content, forKey: .content)
        try container.encode(refusal, forKey: .refusal)
        try container.encodeIfPresent(toolCalls, forKey: .toolCalls)
        try container.encode(role, forKey: .role)
        try container.encodeIfPresent(functionCall, forKey: .functionCall)
        try container.encodeIfPresent(audio, forKey: .audio)
    }
}
