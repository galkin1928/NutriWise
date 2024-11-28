//
//  CameraView.swift
//  NutriWise
//
//  Created by Galkin Alexander on 27.11.2024.
//

import SwiftUI
import AVFoundation

struct CameraView: UIViewControllerRepresentable {
	var onPhotoCaptured: (String) -> Void

	func makeUIViewController(context: Context) -> UIImagePickerController {
		let picker = UIImagePickerController()
		picker.sourceType = .camera
		picker.delegate = context.coordinator
		return picker
	}

	func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}

	func makeCoordinator() -> Coordinator {
		Coordinator(self)
	}

	class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
		var parent: CameraView

		init(_ parent: CameraView) {
			self.parent = parent
		}

		func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
			if let image = info[.originalImage] as? UIImage {
				// Сжимаем до 512 пикселей по большей стороне
				let resizedImage = image.resize(maxSide: 512)
				// Преобразуем в Base64
				if let base64 = resizedImage?.toBase64() {
					parent.onPhotoCaptured(base64)
				}
			}
			picker.dismiss(animated: true)
		}
	}
}
