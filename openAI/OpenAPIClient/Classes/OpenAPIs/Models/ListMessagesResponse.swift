//
// ListMessagesResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ListMessagesResponse: Codable, JSONEncodable, Hashable {

    public var object: String
    public var data: [MessageObject]
    public var firstId: String
    public var lastId: String
    public var hasMore: Bool

    public init(object: String, data: [MessageObject], firstId: String, lastId: String, hasMore: Bool) {
        self.object = object
        self.data = data
        self.firstId = firstId
        self.lastId = lastId
        self.hasMore = hasMore
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case object
        case data
        case firstId = "first_id"
        case lastId = "last_id"
        case hasMore = "has_more"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(object, forKey: .object)
        try container.encode(data, forKey: .data)
        try container.encode(firstId, forKey: .firstId)
        try container.encode(lastId, forKey: .lastId)
        try container.encode(hasMore, forKey: .hasMore)
    }
}

