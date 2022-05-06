// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftPackages",
	defaultLocalization: "en",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
		.library(name: "iOSAppFeature", targets: ["iOSAppFeature"]),
		.library(name: "Localization", targets: ["Localization"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
		.package(url: "https://github.com/nicorichard/SwiftGenPlugin", exact: "6.5.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
		// Targets can depend on other targets in this package, and on products in packages this package depends on.
		.target(
			name: "iOSAppFeature",
			dependencies: [
				"Localization",
			]),
		.target(
			name: "Localization",
			exclude: [
				"swiftgen.yml",
			],
			resources: [
				.process("Resources"),
			],
			plugins: [
				.plugin(name: "SwiftGenPlugin", package: "SwiftGenPlugin")
			]),
    ]
)
