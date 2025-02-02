//
// InviteRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InviteRequest: Codable, JSONEncodable, Hashable {

    public enum Role: String, Codable, CaseIterable {
        case reader = "reader"
        case owner = "owner"
    }
    /** Send an email to this address */
    public var email: String
    /** `owner` or `reader` */
    public var role: Role

    public init(email: String, role: Role) {
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
        try container.encode(email, forKey: .email)
        try container.encode(role, forKey: .role)
    }
}

