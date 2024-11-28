//
// AuditLogUserAddedData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The payload used to add the user to the project. */
public struct AuditLogUserAddedData: Codable, JSONEncodable, Hashable {

    /** The role of the user. Is either `owner` or `member`. */
    public var role: String?

    public init(role: String? = nil) {
        self.role = role
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case role
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(role, forKey: .role)
    }
}

