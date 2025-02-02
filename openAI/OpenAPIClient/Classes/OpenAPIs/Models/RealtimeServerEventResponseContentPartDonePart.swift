//
// RealtimeServerEventResponseContentPartDonePart.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The content part that is done. */
public struct RealtimeServerEventResponseContentPartDonePart: Codable, JSONEncodable, Hashable {

    /** The content type (\"text\", \"audio\"). */
    public var type: String?
    /** The text content (if type is \"text\"). */
    public var text: String?
    /** Base64-encoded audio data (if type is \"audio\"). */
    public var audio: String?
    /** The transcript of the audio (if type is \"audio\"). */
    public var transcript: String?

    public init(type: String? = nil, text: String? = nil, audio: String? = nil, transcript: String? = nil) {
        self.type = type
        self.text = text
        self.audio = audio
        self.transcript = transcript
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case text
        case audio
        case transcript
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(audio, forKey: .audio)
        try container.encodeIfPresent(transcript, forKey: .transcript)
    }
}

