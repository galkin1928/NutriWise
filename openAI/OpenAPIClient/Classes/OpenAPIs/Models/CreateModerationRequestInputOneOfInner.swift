//
// CreateModerationRequestInputOneOfInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum CreateModerationRequestInputOneOfInner: Codable, JSONEncodable, Hashable {
    case typeCreateModerationRequestInputOneOfInnerOneOf(CreateModerationRequestInputOneOfInnerOneOf)
    case typeCreateModerationRequestInputOneOfInnerOneOf1(CreateModerationRequestInputOneOfInnerOneOf1)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeCreateModerationRequestInputOneOfInnerOneOf(let value):
            try container.encode(value)
        case .typeCreateModerationRequestInputOneOfInnerOneOf1(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(CreateModerationRequestInputOneOfInnerOneOf.self) {
            self = .typeCreateModerationRequestInputOneOfInnerOneOf(value)
        } else if let value = try? container.decode(CreateModerationRequestInputOneOfInnerOneOf1.self) {
            self = .typeCreateModerationRequestInputOneOfInnerOneOf1(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of CreateModerationRequestInputOneOfInner"))
        }
    }
}

