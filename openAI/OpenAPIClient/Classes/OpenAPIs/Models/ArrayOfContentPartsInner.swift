//
// ArrayOfContentPartsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum ArrayOfContentPartsInner: Codable, JSONEncodable, Hashable {
    case typeMessageContentImageFileObject(MessageContentImageFileObject)
    case typeMessageContentImageUrlObject(MessageContentImageUrlObject)
    case typeMessageRequestContentTextObject(MessageRequestContentTextObject)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeMessageContentImageFileObject(let value):
            try container.encode(value)
        case .typeMessageContentImageUrlObject(let value):
            try container.encode(value)
        case .typeMessageRequestContentTextObject(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(MessageContentImageFileObject.self) {
            self = .typeMessageContentImageFileObject(value)
        } else if let value = try? container.decode(MessageContentImageUrlObject.self) {
            self = .typeMessageContentImageUrlObject(value)
        } else if let value = try? container.decode(MessageRequestContentTextObject.self) {
            self = .typeMessageRequestContentTextObject(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of ArrayOfContentPartsInner"))
        }
    }
}

