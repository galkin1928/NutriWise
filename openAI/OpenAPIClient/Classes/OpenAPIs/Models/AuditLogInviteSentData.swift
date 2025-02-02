//
// AuditLogInviteSentData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The payload used to create the invite. */
public struct AuditLogInviteSentData: Codable, JSONEncodable, Hashable {

    /** The email invited to the organization. */
    public var email: String?
    /** The role the email was invited to be. Is either `owner` or `member`. */
    public var role: String?

    public init(email: String? = nil, role: String? = nil) {
        self.email = email
        self.role = role
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case role
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(role, forKey: .role)
    }
}

