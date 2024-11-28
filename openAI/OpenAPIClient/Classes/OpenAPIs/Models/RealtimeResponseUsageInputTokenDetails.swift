//
// RealtimeResponseUsageInputTokenDetails.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Details about the input tokens used in the Response. */
public struct RealtimeResponseUsageInputTokenDetails: Codable, JSONEncodable, Hashable {

    /** The number of cached tokens used in the Response. */
    public var cachedTokens: Int?
    /** The number of text tokens used in the Response. */
    public var textTokens: Int?
    /** The number of audio tokens used in the Response. */
    public var audioTokens: Int?

    public init(cachedTokens: Int? = nil, textTokens: Int? = nil, audioTokens: Int? = nil) {
        self.cachedTokens = cachedTokens
        self.textTokens = textTokens
        self.audioTokens = audioTokens
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cachedTokens = "cached_tokens"
        case textTokens = "text_tokens"
        case audioTokens = "audio_tokens"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cachedTokens, forKey: .cachedTokens)
        try container.encodeIfPresent(textTokens, forKey: .textTokens)
        try container.encodeIfPresent(audioTokens, forKey: .audioTokens)
    }
}
