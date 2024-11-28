//
// User.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represents an individual &#x60;user&#x60; within an organization. */
public struct User: Codable, JSONEncodable, Hashable {

    public enum Object: String, Codable, CaseIterable {
        case organizationPeriodUser = "organization.user"
    }
    public enum Role: String, Codable, CaseIterable {
        case owner = "owner"
        case reader = "reader"
    }
    /** The object type, which is always `organization.user` */
    public var object: Object
    /** The identifier, which can be referenced in API endpoints */
    public var id: String
    /** The name of the user */
    public var name: String
    /** The email address of the user */
    public var email: String
    /** `owner` or `reader` */
    public var role: Role
    /** The Unix timestamp (in seconds) of when the user was added. */
    public var addedAt: Int

    public init(object: Object, id: String, name: String, email: String, role: Role, addedAt: Int) {
        self.object = object
        self.id = id
        self.name = name
        self.email = email
        self.role = role
        self.addedAt = addedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case object
        case id
        case name
        case email
        case role
        case addedAt = "added_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(object, forKey: .object)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(email, forKey: .email)
        try container.encode(role, forKey: .role)
        try container.encode(addedAt, forKey: .addedAt)
    }
}

