//
// ProjectServiceAccountApiKey.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProjectServiceAccountApiKey: Codable, JSONEncodable, Hashable {

    public enum Object: String, Codable, CaseIterable {
        case organizationPeriodProjectPeriodServiceAccountPeriodApiKey = "organization.project.service_account.api_key"
    }
    /** The object type, which is always `organization.project.service_account.api_key` */
    public var object: Object
    public var value: String
    public var name: String
    public var createdAt: Int
    public var id: String

    public init(object: Object, value: String, name: String, createdAt: Int, id: String) {
        self.object = object
        self.value = value
        self.name = name
        self.createdAt = createdAt
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case object
        case value
        case name
        case createdAt = "created_at"
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(object, forKey: .object)
        try container.encode(value, forKey: .value)
        try container.encode(name, forKey: .name)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(id, forKey: .id)
    }
}
