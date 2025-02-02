//
// ResponseFormatJsonObject.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ResponseFormatJsonObject: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case jsonObject = "json_object"
    }
    /** The type of response format being defined: `json_object` */
    public var type: ModelType

    public init(type: ModelType) {
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
    }
}

