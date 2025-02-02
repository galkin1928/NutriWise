//
// RunStepStreamEventOneOf1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Occurs when a [run step](/docs/api-reference/run-steps/step-object) moves to an &#x60;in_progress&#x60; state. */
public struct RunStepStreamEventOneOf1: Codable, JSONEncodable, Hashable {

    public enum Event: String, Codable, CaseIterable {
        case threadPeriodRunPeriodStepPeriodInProgress = "thread.run.step.in_progress"
    }
    public var event: Event
    public var data: RunStepObject

    public init(event: Event, data: RunStepObject) {
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

