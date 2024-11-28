//
// AuditLogLoginFailed.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The details for events with this &#x60;type&#x60;. */
public struct AuditLogLoginFailed: Codable, JSONEncodable, Hashable {

    /** The error code of the failure. */
    public var errorCode: String?
    /** The error message of the failure. */
    public var errorMessage: String?

    public init(errorCode: String? = nil, errorMessage: String? = nil) {
        self.errorCode = errorCode
        self.errorMessage = errorMessage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case errorCode = "error_code"
        case errorMessage = "error_message"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(errorCode, forKey: .errorCode)
        try container.encodeIfPresent(errorMessage, forKey: .errorMessage)
    }
}

