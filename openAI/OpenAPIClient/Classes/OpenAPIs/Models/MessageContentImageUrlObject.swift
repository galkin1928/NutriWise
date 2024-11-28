//
// MessageContentImageUrlObject.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** References an image URL in the content of a message. */
public struct MessageContentImageUrlObject: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case imageUrl = "image_url"
    }
    /** The type of the content part. */
    public var type: ModelType
    public var imageUrl: MessageContentImageUrlObjectImageUrl

    public init(type: ModelType, imageUrl: MessageContentImageUrlObjectImageUrl) {
        self.type = type
        self.imageUrl = imageUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case imageUrl = "image_url"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(imageUrl, forKey: .imageUrl)
    }
}

