// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftPackages",
    products: [
		.library(name: "iOSAppFeature", targets: ["iOSAppFeature"])
    ],
    dependencies: [],
    targets: [
		.target(
			name: "iOSAppFeature",
			dependencies: [],
            plugins: [
                .plugin(name: "TouchPlugin")
            ]
        ),
        .plugin(
            name: "TouchPlugin",
            capability: .buildTool(),
            dependencies: ["touch"]
        ),
//        .executableTarget(name: "touch")
        .binaryTarget(name: "touch", path: "bin/touch.artifactbundle")
    ]
)
