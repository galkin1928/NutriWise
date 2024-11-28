//
// ChatCompletionRequestAssistantMessageContentPart.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum ChatCompletionRequestAssistantMessageContentPart: Codable, JSONEncodable, Hashable {
    case typeChatCompletionRequestMessageContentPartRefusal(ChatCompletionRequestMessageContentPartRefusal)
    case typeChatCompletionRequestMessageContentPartText(ChatCompletionRequestMessageContentPartText)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeChatCompletionRequestMessageContentPartRefusal(let value):
            try container.encode(value)
        case .typeChatCompletionRequestMessageContentPartText(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ChatCompletionRequestMessageContentPartRefusal.self) {
            self = .typeChatCompletionRequestMessageContentPartRefusal(value)
        } else if let value = try? container.decode(ChatCompletionRequestMessageContentPartText.self) {
            self = .typeChatCompletionRequestMessageContentPartText(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of ChatCompletionRequestAssistantMessageContentPart"))
        }
    }
}

