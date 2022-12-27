//
//  Logger+init.swift
//  CommonKit
//
//  Created by royal on 26/12/2022.
//

import OSLog

// MARK: - Logger+Category

public extension Logger {
	enum Category {
		/// App
		public static let app = "App"
		/// Scene
		public static let scene = "Scene"
		/// Persistence
		public static let persistence = "Persistence"
		/// Preferences
		public static let preferences = "Preferences"
	}
}

// MARK: - Logger+init(category:)

public extension Logger {
	/// Convenience initializer with `subsystem` already filled in.
	/// - Parameter category: Category of `Logger`
	@inlinable
	init(category: String) {
		self.init(subsystem: Bundle.main.bundleIdentifier ?? "", category: category)
	}
}
