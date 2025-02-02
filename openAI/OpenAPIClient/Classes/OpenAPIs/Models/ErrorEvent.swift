//
// ErrorEvent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Occurs when an [error](/docs/guides/error-codes#api-errors) occurs. This can happen due to an internal server error or a timeout. */
public struct ErrorEvent: Codable, JSONEncodable, Hashable {

    public enum Event: String, Codable, CaseIterable {
        case error = "error"
    }
    public var event: Event
    public var data: ModelError

    public init(event: Event, data: ModelError) {
        self.event = event
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case event
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(event, forKey: .event)
        try container.encode(data, forKey: .data)
    }
}

