//
// MessageDeltaContentTextObject.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The text content that is part of a message. */
public struct MessageDeltaContentTextObject: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case text = "text"
    }
    /** The index of the content part in the message. */
    public var index: Int
    /** Always `text`. */
    public var type: ModelType
    public var text: MessageDeltaContentTextObjectText?

    public init(index: Int, type: ModelType, text: MessageDeltaContentTextObjectText? = nil) {
        self.index = index
        self.type = type
        self.text = text
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case index
        case type
        case text
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(index, forKey: .index)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(text, forKey: .text)
    }
}

