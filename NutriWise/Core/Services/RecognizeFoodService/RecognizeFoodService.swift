//
//  RecognizeFoodService.swift
//  NutriWise
//
//  Created by Galkin Alexander on 21.11.2024.
//

import Foundation

protocol IRecognizeFoodService {
	func fetchNutritionalData(base64: String, completion: @escaping (Result<NutritionalData, Error>) -> Void)
}

struct NutritionalData: Decodable {
	let proteins: Double
	let fats: Double
	let carbs: Double
	let calories: Double
}

final class RecognizeFoodService: IRecognizeFoodService {
	var openAINetwork = OpenAINetwork()
	func fetchNutritionalData(base64: String, completion: @escaping (Result<NutritionalData, Error>) -> Void) {
		openAINetwork.callOpenAI(image: base64) { data in
			completion(.success(data!))
		}
	}
}
