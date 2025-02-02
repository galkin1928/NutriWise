//
// ChatCompletionFunctions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, message: "This schema is deprecated.")
public struct ChatCompletionFunctions: Codable, JSONEncodable, Hashable {

    /** A description of what the function does, used by the model to choose when and how to call the function. */
    public var description: String?
    /** The name of the function to be called. Must be a-z, A-Z, 0-9, or contain underscores and dashes, with a maximum length of 64. */
    public var name: String
    /** The parameters the functions accepts, described as a JSON Schema object. See the [guide](/docs/guides/function-calling) for examples, and the [JSON Schema reference](https://json-schema.org/understanding-json-schema/) for documentation about the format.   Omitting `parameters` defines a function with an empty parameter list. */
    public var parameters: [String: AnyCodable]?

    public init(description: String? = nil, name: String, parameters: [String: AnyCodable]? = nil) {
        self.description = description
        self.name = name
        self.parameters = parameters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case description
        case name
        case parameters
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(parameters, forKey: .parameters)
    }
}

