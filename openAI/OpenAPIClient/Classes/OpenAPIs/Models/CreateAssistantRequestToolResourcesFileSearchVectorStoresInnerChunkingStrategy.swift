//
// CreateAssistantRequestToolResourcesFileSearchVectorStoresInnerChunkingStrategy.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The chunking strategy used to chunk the file(s). If not set, will use the &#x60;auto&#x60; strategy. */
public enum CreateAssistantRequestToolResourcesFileSearchVectorStoresInnerChunkingStrategy: Codable, JSONEncodable, Hashable {
    case typeAutoChunkingStrategy(AutoChunkingStrategy)
    case typeStaticChunkingStrategy(StaticChunkingStrategy)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeAutoChunkingStrategy(let value):
            try container.encode(value)
        case .typeStaticChunkingStrategy(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(AutoChunkingStrategy.self) {
            self = .typeAutoChunkingStrategy(value)
        } else if let value = try? container.decode(StaticChunkingStrategy.self) {
            self = .typeStaticChunkingStrategy(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of CreateAssistantRequestToolResourcesFileSearchVectorStoresInnerChunkingStrategy"))
        }
    }
}

