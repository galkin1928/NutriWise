//
// ProjectRateLimitUpdateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProjectRateLimitUpdateRequest: Codable, JSONEncodable, Hashable {

    /** The maximum requests per minute. */
    public var maxRequestsPer1Minute: Int?
    /** The maximum tokens per minute. */
    public var maxTokensPer1Minute: Int?
    /** The maximum images per minute. Only relevant for certain models. */
    public var maxImagesPer1Minute: Int?
    /** The maximum audio megabytes per minute. Only relevant for certain models. */
    public var maxAudioMegabytesPer1Minute: Int?
    /** The maximum requests per day. Only relevant for certain models. */
    public var maxRequestsPer1Day: Int?
    /** The maximum batch input tokens per day. Only relevant for certain models. */
    public var batch1DayMaxInputTokens: Int?

    public init(maxRequestsPer1Minute: Int? = nil, maxTokensPer1Minute: Int? = nil, maxImagesPer1Minute: Int? = nil, maxAudioMegabytesPer1Minute: Int? = nil, maxRequestsPer1Day: Int? = nil, batch1DayMaxInputTokens: Int? = nil) {
        self.maxRequestsPer1Minute = maxRequestsPer1Minute
        self.maxTokensPer1Minute = maxTokensPer1Minute
        self.maxImagesPer1Minute = maxImagesPer1Minute
        self.maxAudioMegabytesPer1Minute = maxAudioMegabytesPer1Minute
        self.maxRequestsPer1Day = maxRequestsPer1Day
        self.batch1DayMaxInputTokens = batch1DayMaxInputTokens
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case maxRequestsPer1Minute = "max_requests_per_1_minute"
        case maxTokensPer1Minute = "max_tokens_per_1_minute"
        case maxImagesPer1Minute = "max_images_per_1_minute"
        case maxAudioMegabytesPer1Minute = "max_audio_megabytes_per_1_minute"
        case maxRequestsPer1Day = "max_requests_per_1_day"
        case batch1DayMaxInputTokens = "batch_1_day_max_input_tokens"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(maxRequestsPer1Minute, forKey: .maxRequestsPer1Minute)
        try container.encodeIfPresent(maxTokensPer1Minute, forKey: .maxTokensPer1Minute)
        try container.encodeIfPresent(maxImagesPer1Minute, forKey: .maxImagesPer1Minute)
        try container.encodeIfPresent(maxAudioMegabytesPer1Minute, forKey: .maxAudioMegabytesPer1Minute)
        try container.encodeIfPresent(maxRequestsPer1Day, forKey: .maxRequestsPer1Day)
        try container.encodeIfPresent(batch1DayMaxInputTokens, forKey: .batch1DayMaxInputTokens)
    }
}

