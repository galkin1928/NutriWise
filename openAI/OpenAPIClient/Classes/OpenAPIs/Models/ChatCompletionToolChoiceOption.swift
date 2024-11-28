//
// ChatCompletionToolChoiceOption.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Controls which (if any) tool is called by the model. &#x60;none&#x60; means the model will not call any tool and instead generates a message. &#x60;auto&#x60; means the model can pick between generating a message or calling one or more tools. &#x60;required&#x60; means the model must call one or more tools. Specifying a particular tool via &#x60;{\&quot;type\&quot;: \&quot;function\&quot;, \&quot;function\&quot;: {\&quot;name\&quot;: \&quot;my_function\&quot;}}&#x60; forces the model to call that tool.  &#x60;none&#x60; is the default when no tools are present. &#x60;auto&#x60; is the default if tools are present.  */
public enum ChatCompletionToolChoiceOption: Codable, JSONEncodable, Hashable {
    case typeChatCompletionNamedToolChoice(ChatCompletionNamedToolChoice)
    case typeString(String)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeChatCompletionNamedToolChoice(let value):
            try container.encode(value)
        case .typeString(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ChatCompletionNamedToolChoice.self) {
            self = .typeChatCompletionNamedToolChoice(value)
        } else if let value = try? container.decode(String.self) {
            self = .typeString(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of ChatCompletionToolChoiceOption"))
        }
    }
}
