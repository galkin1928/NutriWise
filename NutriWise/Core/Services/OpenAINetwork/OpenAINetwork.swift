//
//  OpenAINetwork.swift
//  NutriWise
//
//  Created by Galkin Alexander on 21.11.2024.
//

import Foundation

protocol IOpenAINetwork {
	func callOpenAI(image: String, completion: @escaping (NutritionalData?) -> Void)
}

struct OpenAIRequest: Codable {
	let model: String
	let messages: [OpenAIMessage]
	let temperature: Double
	let response_format: ResponseFormat
}

struct OpenAIResponse: Codable {
	struct Choice: Codable {
		struct Message: Codable {
			let content: String
		}
		let message: Message
	}

	let choices: [Choice]
}

struct OpenAIMessage: Codable {
	struct Content: Codable {
		struct ImageUrl: Codable {
			enum Detail: String, Codable { case low, high }
			let url: String
			let detail: Detail
		}
		enum ContentType: String, Codable { case text, image_url}
		let type: ContentType
		let text: String?
		let image_url: ImageUrl?
	}
	enum Role: String, Codable {
		case system, user
	}
	let role: Role
	let content: [Content]
}




final class OpenAINetwork: IOpenAINetwork {
	private let apiKey = ""

	func callOpenAI(image: String, completion: @escaping (NutritionalData?) -> Void) {
		guard let url = URL(string: "https://api.openai.com/v1/chat/completions") else {
			completion(nil)
			return
		}

		var request = URLRequest(url: url)
		request.httpMethod = "POST"
		request.addValue("application/json", forHTTPHeaderField: "Content-Type")
		request.addValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")

		let messages = [
			OpenAIMessage(role: .user, content:
							[.init(
								type: .text,
								text: "You're a helper in determining proteins, fats, carbohydrates, and calories per 100g in food from photos.",
								image_url: nil
							),
							 .init(
								type: .image_url,
								text: nil,
								image_url: .init(url: "data:image/jpeg;base64,{\(image)}", detail: .low)
							 )
							]
						 )
		]

		let openAIRequest = OpenAIRequest(
			model: "gpt-4o-2024-08-06",
			messages: messages,
			temperature: 0.7,
			response_format: generateJSONSchema(for: ResponseFormat.self)!
		)

		guard let httpBody = try? JSONEncoder().encode(openAIRequest) else {
			completion(nil)
			return
		}
		request.httpBody = httpBody

		URLSession.shared.dataTask(with: request) { data, response, error in
			if let error = error {
				print("Ошибка: \(error.localizedDescription)")
				completion(nil)
				return
			}

			guard let data = data else {
				print("Данных нет.")
				completion(nil)
				return
			}

			do {
				let decodedResponse = try JSONDecoder().decode(OpenAIResponse.self, from: data)
				let resultData = Data(decodedResponse.choices.first!.message.content.utf8)
				let result = try JSONDecoder().decode(NutritionalData.self, from: resultData)
				completion(result)
			} catch {
				print("Ошибка парсинга: \(error.localizedDescription)")
				completion(nil)
			}
		}.resume()
	}

	func generateJSONSchema<T: Codable>(for type: T.Type) -> ResponseFormat? {
		if type == ResponseFormat.self {
			return ResponseFormat(
				type: "json_schema",
				jsonSchema: .init(
					name: "math_reasoning",
					schema: .init(
						type: "object",
						properties: Properties(
							proteins: PropertyType(type: "number"),
							fats: PropertyType(type: "number"),
							carbs: PropertyType(type: "number"),
							calories: PropertyType(type: "number")),
						required: ["proteins", "fats", "carbs", "calories"],
						additionalProperties: false
					),
					strict: true
				)
			)
		} else {
			return nil
		}
	}
}
