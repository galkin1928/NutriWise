//
// AuditLogEventType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The event type. */
public enum AuditLogEventType: String, Codable, CaseIterable {
    case apiKeyPeriodCreated = "api_key.created"
    case apiKeyPeriodUpdated = "api_key.updated"
    case apiKeyPeriodDeleted = "api_key.deleted"
    case invitePeriodSent = "invite.sent"
    case invitePeriodAccepted = "invite.accepted"
    case invitePeriodDeleted = "invite.deleted"
    case loginPeriodSucceeded = "login.succeeded"
    case loginPeriodFailed = "login.failed"
    case logoutPeriodSucceeded = "logout.succeeded"
    case logoutPeriodFailed = "logout.failed"
    case organizationPeriodUpdated = "organization.updated"
    case projectPeriodCreated = "project.created"
    case projectPeriodUpdated = "project.updated"
    case projectPeriodArchived = "project.archived"
    case serviceAccountPeriodCreated = "service_account.created"
    case serviceAccountPeriodUpdated = "service_account.updated"
    case serviceAccountPeriodDeleted = "service_account.deleted"
    case rateLimitPeriodUpdated = "rate_limit.updated"
    case rateLimitPeriodDeleted = "rate_limit.deleted"
    case userPeriodAdded = "user.added"
    case userPeriodUpdated = "user.updated"
    case userPeriodDeleted = "user.deleted"
}
