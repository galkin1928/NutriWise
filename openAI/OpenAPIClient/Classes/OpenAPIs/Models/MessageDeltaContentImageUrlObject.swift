//
// MessageDeltaContentImageUrlObject.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** References an image URL in the content of a message. */
public struct MessageDeltaContentImageUrlObject: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case imageUrl = "image_url"
    }
    /** The index of the content part in the message. */
    public var index: Int
    /** Always `image_url`. */
    public var type: ModelType
    public var imageUrl: MessageDeltaContentImageUrlObjectImageUrl?

    public init(index: Int, type: ModelType, imageUrl: MessageDeltaContentImageUrlObjectImageUrl? = nil) {
        self.index = index
        self.type = type
        self.imageUrl = imageUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case index
        case type
        case imageUrl = "image_url"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(index, forKey: .index)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(imageUrl, forKey: .imageUrl)
    }
}

