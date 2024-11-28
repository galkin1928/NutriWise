//
// CreateModerationResponseResultsInnerCategoryScores.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A list of the categories along with their scores as predicted by model. */
public struct CreateModerationResponseResultsInnerCategoryScores: Codable, JSONEncodable, Hashable {

    /** The score for the category 'hate'. */
    public var hate: Double
    /** The score for the category 'hate/threatening'. */
    public var hateThreatening: Double
    /** The score for the category 'harassment'. */
    public var harassment: Double
    /** The score for the category 'harassment/threatening'. */
    public var harassmentThreatening: Double
    /** The score for the category 'illicit'. */
    public var illicit: Double
    /** The score for the category 'illicit/violent'. */
    public var illicitViolent: Double
    /** The score for the category 'self-harm'. */
    public var selfHarm: Double
    /** The score for the category 'self-harm/intent'. */
    public var selfHarmIntent: Double
    /** The score for the category 'self-harm/instructions'. */
    public var selfHarmInstructions: Double
    /** The score for the category 'sexual'. */
    public var sexual: Double
    /** The score for the category 'sexual/minors'. */
    public var sexualMinors: Double
    /** The score for the category 'violence'. */
    public var violence: Double
    /** The score for the category 'violence/graphic'. */
    public var violenceGraphic: Double

    public init(hate: Double, hateThreatening: Double, harassment: Double, harassmentThreatening: Double, illicit: Double, illicitViolent: Double, selfHarm: Double, selfHarmIntent: Double, selfHarmInstructions: Double, sexual: Double, sexualMinors: Double, violence: Double, violenceGraphic: Double) {
        self.hate = hate
        self.hateThreatening = hateThreatening
        self.harassment = harassment
        self.harassmentThreatening = harassmentThreatening
        self.illicit = illicit
        self.illicitViolent = illicitViolent
        self.selfHarm = selfHarm
        self.selfHarmIntent = selfHarmIntent
        self.selfHarmInstructions = selfHarmInstructions
        self.sexual = sexual
        self.sexualMinors = sexualMinors
        self.violence = violence
        self.violenceGraphic = violenceGraphic
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hate
        case hateThreatening = "hate/threatening"
        case harassment
        case harassmentThreatening = "harassment/threatening"
        case illicit
        case illicitViolent = "illicit/violent"
        case selfHarm = "self-harm"
        case selfHarmIntent = "self-harm/intent"
        case selfHarmInstructions = "self-harm/instructions"
        case sexual
        case sexualMinors = "sexual/minors"
        case violence
        case violenceGraphic = "violence/graphic"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(hate, forKey: .hate)
        try container.encode(hateThreatening, forKey: .hateThreatening)
        try container.encode(harassment, forKey: .harassment)
        try container.encode(harassmentThreatening, forKey: .harassmentThreatening)
        try container.encode(illicit, forKey: .illicit)
        try container.encode(illicitViolent, forKey: .illicitViolent)
        try container.encode(selfHarm, forKey: .selfHarm)
        try container.encode(selfHarmIntent, forKey: .selfHarmIntent)
        try container.encode(selfHarmInstructions, forKey: .selfHarmInstructions)
        try container.encode(sexual, forKey: .sexual)
        try container.encode(sexualMinors, forKey: .sexualMinors)
        try container.encode(violence, forKey: .violence)
        try container.encode(violenceGraphic, forKey: .violenceGraphic)
    }
}
