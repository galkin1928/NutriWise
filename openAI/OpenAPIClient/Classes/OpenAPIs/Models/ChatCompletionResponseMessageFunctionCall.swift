//
// ChatCompletionResponseMessageFunctionCall.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Deprecated and replaced by &#x60;tool_calls&#x60;. The name and arguments of a function that should be called, as generated by the model. */
@available(*, deprecated, message: "This schema is deprecated.")
public struct ChatCompletionResponseMessageFunctionCall: Codable, JSONEncodable, Hashable {

    /** The arguments to call the function with, as generated by the model in JSON format. Note that the model does not always generate valid JSON, and may hallucinate parameters not defined by your function schema. Validate the arguments in your code before calling your function. */
    public var arguments: String
    /** The name of the function to call. */
    public var name: String

    public init(arguments: String, name: String) {
        self.arguments = arguments
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case arguments
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(arguments, forKey: .arguments)
        try container.encode(name, forKey: .name)
    }
}

