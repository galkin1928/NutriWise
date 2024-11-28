//
// ProjectApiKey.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represents an individual API key in a project. */
public struct ProjectApiKey: Codable, JSONEncodable, Hashable {

    public enum Object: String, Codable, CaseIterable {
        case organizationPeriodProjectPeriodApiKey = "organization.project.api_key"
    }
    /** The object type, which is always `organization.project.api_key` */
    public var object: Object
    /** The redacted value of the API key */
    public var redactedValue: String
    /** The name of the API key */
    public var name: String
    /** The Unix timestamp (in seconds) of when the API key was created */
    public var createdAt: Int
    /** The identifier, which can be referenced in API endpoints */
    public var id: String
    public var owner: ProjectApiKeyOwner

    public init(object: Object, redactedValue: String, name: String, createdAt: Int, id: String, owner: ProjectApiKeyOwner) {
        self.object = object
        self.redactedValue = redactedValue
        self.name = name
        self.createdAt = createdAt
        self.id = id
        self.owner = owner
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case object
        case redactedValue = "redacted_value"
        case name
        case createdAt = "created_at"
        case id
        case owner
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(object, forKey: .object)
        try container.encode(redactedValue, forKey: .redactedValue)
        try container.encode(name, forKey: .name)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(id, forKey: .id)
        try container.encode(owner, forKey: .owner)
    }
}
