//
// ChatCompletionRequestMessageContentPartImageImageUrl.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ChatCompletionRequestMessageContentPartImageImageUrl: Codable, JSONEncodable, Hashable {

    public enum Detail: String, Codable, CaseIterable {
        case auto = "auto"
        case low = "low"
        case high = "high"
    }
    /** Either a URL of the image or the base64 encoded image data. */
    public var url: String
    /** Specifies the detail level of the image. Learn more in the [Vision guide](/docs/guides/vision#low-or-high-fidelity-image-understanding). */
    public var detail: Detail? = .auto

    public init(url: String, detail: Detail? = .auto) {
        self.url = url
        self.detail = detail
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case detail
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(url, forKey: .url)
        try container.encodeIfPresent(detail, forKey: .detail)
    }
}

