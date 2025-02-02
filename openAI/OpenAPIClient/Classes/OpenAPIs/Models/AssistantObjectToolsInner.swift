//
// AssistantObjectToolsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum AssistantObjectToolsInner: Codable, JSONEncodable, Hashable {
    case typeAssistantToolsCode(AssistantToolsCode)
    case typeAssistantToolsFileSearch(AssistantToolsFileSearch)
    case typeAssistantToolsFunction(AssistantToolsFunction)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeAssistantToolsCode(let value):
            try container.encode(value)
        case .typeAssistantToolsFileSearch(let value):
            try container.encode(value)
        case .typeAssistantToolsFunction(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(AssistantToolsCode.self) {
            self = .typeAssistantToolsCode(value)
        } else if let value = try? container.decode(AssistantToolsFileSearch.self) {
            self = .typeAssistantToolsFileSearch(value)
        } else if let value = try? container.decode(AssistantToolsFunction.self) {
            self = .typeAssistantToolsFunction(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of AssistantObjectToolsInner"))
        }
    }
}

