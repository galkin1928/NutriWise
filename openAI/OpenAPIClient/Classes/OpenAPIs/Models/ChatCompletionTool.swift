//
// ChatCompletionTool.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ChatCompletionTool: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case function = "function"
    }
    /** The type of the tool. Currently, only `function` is supported. */
    public var type: ModelType
    public var function: FunctionObject

    public init(type: ModelType, function: FunctionObject) {
        self.type = type
        self.function = function
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case function
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(function, forKey: .function)
    }
}

