//
//  ResponseFormat.swift
//  NutriWise
//
//  Created by Galkin Alexander on 22.11.2024.
//

import Foundation

// MARK: - Структура для ResponseFormat
struct ResponseFormat: Codable {
	// MARK: - Структура для JSONSchema
	struct JSONSchema: Codable {
		// MARK: - Структура для Schema
		struct Schema: Codable {
			let type: String
			let properties: Properties
			let required: [String]
			let additionalProperties: Bool
		}

		let name: String
		let schema: Schema
		let strict: Bool
	}

	let type: String
	let jsonSchema: JSONSchema

	enum CodingKeys: String, CodingKey {
		case type
		case jsonSchema = "json_schema"
	}
}


// MARK: - Структура для Properties
struct Properties: Codable {
	let proteins: PropertyType
	let fats: PropertyType
	let carbs: PropertyType
	let calories: PropertyType
}

struct PropertyType: Codable {
	let type: String
}
