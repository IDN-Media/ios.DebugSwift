// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "DebugSwift",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "DebugSwift",
            targets: ["DebugSwift"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DebugSwift",
            dependencies: [],
            path: "DebugSwift",
            exclude: ["Tests"],
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "DebugSwiftTests",
            dependencies: ["DebugSwift"],
            path: "Tests/DebugSwiftTests"
        )
    ],
    swiftLanguageModes: [.v6]
)
