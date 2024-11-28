//
// ChatCompletionRequestSystemMessageContentPart.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum ChatCompletionRequestSystemMessageContentPart: Codable, JSONEncodable, Hashable {
    case typeChatCompletionRequestMessageContentPartText(ChatCompletionRequestMessageContentPartText)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeChatCompletionRequestMessageContentPartText(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ChatCompletionRequestMessageContentPartText.self) {
            self = .typeChatCompletionRequestMessageContentPartText(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of ChatCompletionRequestSystemMessageContentPart"))
        }
    }
}
