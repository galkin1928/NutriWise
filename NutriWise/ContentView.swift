import SwiftUI

import SwiftUI

struct ContentView: View {
	@State private var showCamera = false
	@State private var proteins: Double? = nil
	@State private var fats: Double? = nil
	@State private var carbs: Double? = nil
	@State private var calories: Double? = nil
	@State private var isLoading = false

	let service = RecognizeFoodService()

	var body: some View {
		VStack {
			Button("Сделать фото") {
				showCamera = true
			}
			.padding()
			.buttonStyle(.borderedProminent)

			if isLoading {
				ProgressView("Загрузка...")
					.padding()
					.font(.headline)
			} else if let proteins = proteins, let fats = fats, let carbs = carbs, let calories = calories {
				VStack(alignment: .leading, spacing: 10) {
					Text("Белки: \(proteins, specifier: "%.2f") г")
					Text("Жиры: \(fats, specifier: "%.2f") г")
					Text("Углеводы: \(carbs, specifier: "%.2f") г")
					Text("Калории: \(calories, specifier: "%.2f") ккал")
				}
				.font(.headline)
				.padding()
			} else {
				Text("Информация о блюде появится здесь.")
					.font(.subheadline)
					.foregroundColor(.gray)
					.padding()
			}
		}
		.sheet(isPresented: $showCamera) {
			CameraView { base64 in
				isLoading = true
				service.fetchNutritionalData(base64: base64) { result in
					isLoading = false
					DispatchQueue.main.async {
						switch result {
						case .success(let data):
							self.proteins = data.proteins
							self.fats = data.fats
							self.carbs = data.carbs
							self.calories = data.calories
						case .failure(let error):
							print("Error fetching data: \(error.localizedDescription)")
						}
					}
				}
			}
		}
	}
}
