//
// StaticChunkingStrategyResponseParam.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct StaticChunkingStrategyResponseParam: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case _static = "static"
    }
    /** Always `static`. */
    public var type: ModelType
    public var _static: StaticChunkingStrategy

    public init(type: ModelType, _static: StaticChunkingStrategy) {
        self.type = type
        self._static = _static
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case _static = "static"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(_static, forKey: ._static)
    }
}
