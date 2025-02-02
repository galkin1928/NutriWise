//
// MessageDeltaObjectDeltaContentInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum MessageDeltaObjectDeltaContentInner: Codable, JSONEncodable, Hashable {
    case typeMessageDeltaContentImageFileObject(MessageDeltaContentImageFileObject)
    case typeMessageDeltaContentImageUrlObject(MessageDeltaContentImageUrlObject)
    case typeMessageDeltaContentRefusalObject(MessageDeltaContentRefusalObject)
    case typeMessageDeltaContentTextObject(MessageDeltaContentTextObject)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeMessageDeltaContentImageFileObject(let value):
            try container.encode(value)
        case .typeMessageDeltaContentImageUrlObject(let value):
            try container.encode(value)
        case .typeMessageDeltaContentRefusalObject(let value):
            try container.encode(value)
        case .typeMessageDeltaContentTextObject(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(MessageDeltaContentImageFileObject.self) {
            self = .typeMessageDeltaContentImageFileObject(value)
        } else if let value = try? container.decode(MessageDeltaContentImageUrlObject.self) {
            self = .typeMessageDeltaContentImageUrlObject(value)
        } else if let value = try? container.decode(MessageDeltaContentRefusalObject.self) {
            self = .typeMessageDeltaContentRefusalObject(value)
        } else if let value = try? container.decode(MessageDeltaContentTextObject.self) {
            self = .typeMessageDeltaContentTextObject(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of MessageDeltaObjectDeltaContentInner"))
        }
    }
}

