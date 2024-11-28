//
// ChunkingStrategyRequestParam.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The chunking strategy used to chunk the file(s). If not set, will use the &#x60;auto&#x60; strategy. */
public enum ChunkingStrategyRequestParam: Codable, JSONEncodable, Hashable {
    case typeAutoChunkingStrategyRequestParam(AutoChunkingStrategyRequestParam)
    case typeStaticChunkingStrategyRequestParam(StaticChunkingStrategyRequestParam)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeAutoChunkingStrategyRequestParam(let value):
            try container.encode(value)
        case .typeStaticChunkingStrategyRequestParam(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(AutoChunkingStrategyRequestParam.self) {
            self = .typeAutoChunkingStrategyRequestParam(value)
        } else if let value = try? container.decode(StaticChunkingStrategyRequestParam.self) {
            self = .typeStaticChunkingStrategyRequestParam(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of ChunkingStrategyRequestParam"))
        }
    }
}

