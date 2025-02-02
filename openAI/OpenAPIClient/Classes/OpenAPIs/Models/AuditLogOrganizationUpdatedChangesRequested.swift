//
// AuditLogOrganizationUpdatedChangesRequested.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The payload used to update the organization settings. */
public struct AuditLogOrganizationUpdatedChangesRequested: Codable, JSONEncodable, Hashable {

    /** The organization title. */
    public var title: String?
    /** The organization description. */
    public var description: String?
    /** The organization name. */
    public var name: String?
    public var settings: AuditLogOrganizationUpdatedChangesRequestedSettings?

    public init(title: String? = nil, description: String? = nil, name: String? = nil, settings: AuditLogOrganizationUpdatedChangesRequestedSettings? = nil) {
        self.title = title
        self.description = description
        self.name = name
        self.settings = settings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case description
        case name
        case settings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(settings, forKey: .settings)
    }
}

