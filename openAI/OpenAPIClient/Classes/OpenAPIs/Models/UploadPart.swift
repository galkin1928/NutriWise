//
// UploadPart.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The upload Part represents a chunk of bytes we can add to an Upload object.  */
public struct UploadPart: Codable, JSONEncodable, Hashable {

    public enum Object: String, Codable, CaseIterable {
        case uploadPeriodPart = "upload.part"
    }
    /** The upload Part unique identifier, which can be referenced in API endpoints. */
    public var id: String
    /** The Unix timestamp (in seconds) for when the Part was created. */
    public var createdAt: Int
    /** The ID of the Upload object that this Part was added to. */
    public var uploadId: String
    /** The object type, which is always `upload.part`. */
    public var object: Object

    public init(id: String, createdAt: Int, uploadId: String, object: Object) {
        self.id = id
        self.createdAt = createdAt
        self.uploadId = uploadId
        self.object = object
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case createdAt = "created_at"
        case uploadId = "upload_id"
        case object
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(uploadId, forKey: .uploadId)
        try container.encode(object, forKey: .object)
    }
}

