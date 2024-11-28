//
//  UIImage+Extensions.swift
//  NutriWise
//
//  Created by Galkin Alexander on 27.11.2024.
//

import UIKit

extension UIImage {
	func resize(maxSide: CGFloat) -> UIImage? {
		let scale = maxSide / max(size.width, size.height)
		let newSize = CGSize(width: size.width * scale, height: size.height * scale)
		let renderer = UIGraphicsImageRenderer(size: newSize)
		return renderer.image { _ in
			self.draw(in: CGRect(origin: .zero, size: newSize))
		}
	}

	func toBase64() -> String? {
		guard let data = self.jpegData(compressionQuality: 0.8) else { return nil }
		return data.base64EncodedString()
	}
}
