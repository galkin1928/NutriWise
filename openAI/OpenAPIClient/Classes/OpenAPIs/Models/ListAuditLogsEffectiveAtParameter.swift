//
// ListAuditLogsEffectiveAtParameter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ListAuditLogsEffectiveAtParameter: Codable, JSONEncodable, Hashable {

    /** Return only events whose `effective_at` (Unix seconds) is greater than this value. */
    public var gt: Int?
    /** Return only events whose `effective_at` (Unix seconds) is greater than or equal to this value. */
    public var gte: Int?
    /** Return only events whose `effective_at` (Unix seconds) is less than this value. */
    public var lt: Int?
    /** Return only events whose `effective_at` (Unix seconds) is less than or equal to this value. */
    public var lte: Int?

    public init(gt: Int? = nil, gte: Int? = nil, lt: Int? = nil, lte: Int? = nil) {
        self.gt = gt
        self.gte = gte
        self.lt = lt
        self.lte = lte
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case gt
        case gte
        case lt
        case lte
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(gt, forKey: .gt)
        try container.encodeIfPresent(gte, forKey: .gte)
        try container.encodeIfPresent(lt, forKey: .lt)
        try container.encodeIfPresent(lte, forKey: .lte)
    }
}

