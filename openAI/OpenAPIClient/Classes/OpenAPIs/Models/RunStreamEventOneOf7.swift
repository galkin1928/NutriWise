//
// RunStreamEventOneOf7.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Occurs when a [run](/docs/api-reference/runs/object) moves to a &#x60;cancelling&#x60; status. */
public struct RunStreamEventOneOf7: Codable, JSONEncodable, Hashable {

    public enum Event: String, Codable, CaseIterable {
        case threadPeriodRunPeriodCancelling = "thread.run.cancelling"
    }
    public var event: Event
    public var data: RunObject

    public init(event: Event, data: RunObject) {
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

