//
// MessageContentImageFileObject.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** References an image [File](/docs/api-reference/files) in the content of a message. */
public struct MessageContentImageFileObject: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case imageFile = "image_file"
    }
    /** Always `image_file`. */
    public var type: ModelType
    public var imageFile: MessageContentImageFileObjectImageFile

    public init(type: ModelType, imageFile: MessageContentImageFileObjectImageFile) {
        self.type = type
        self.imageFile = imageFile
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case imageFile = "image_file"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(imageFile, forKey: .imageFile)
    }
}
