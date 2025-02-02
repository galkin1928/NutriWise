//
// CreateModerationRequestInputOneOfInnerOneOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** An object describing an image to classify. */
public struct CreateModerationRequestInputOneOfInnerOneOf: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case imageUrl = "image_url"
    }
    /** Always `image_url`. */
    public var type: ModelType
    public var imageUrl: CreateModerationRequestInputOneOfInnerOneOfImageUrl

    public init(type: ModelType, imageUrl: CreateModerationRequestInputOneOfInnerOneOfImageUrl) {
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

