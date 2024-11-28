//
// AuditLogProjectCreatedData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The payload used to create the project. */
public struct AuditLogProjectCreatedData: Codable, JSONEncodable, Hashable {

    /** The project name. */
    public var name: String?
    /** The title of the project as seen on the dashboard. */
    public var title: String?

    public init(name: String? = nil, title: String? = nil) {
        self.name = name
        self.title = title
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case title
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(title, forKey: .title)
    }
}
