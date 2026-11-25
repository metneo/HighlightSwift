// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "HighlightSwift",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15),
        .macOS(.v12),
        .watchOS(.v8),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "HighlightSwift",
            targets: ["HighlightSwift"]),
    ],
    targets: [
        .target(
            name: "HighlightSwift",
            resources: [.process("HighlightJS")],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]),
        .testTarget(
            name: "HighlightSwiftTests",
            dependencies: ["HighlightSwift"]),
    ]
)
