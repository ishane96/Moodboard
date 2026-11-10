// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "MoodboardKit",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "Core", targets: ["Core"]),
        .library(name: "Networking", targets: ["Networking"]),
        .library(name: "ImagePipeline", targets: ["ImagePipeline"]),
        .library(name: "Persistence", targets: ["Persistence"]),
    ],
    targets: [
        .target(name: "Core"),
        .target(name: "Networking", dependencies: []),
        .target(name: "ImagePipeline", dependencies: []),
        .target(name: "Persistence", dependencies: []),

        .testTarget(name: "CoreTests", dependencies: ["Core"]),
        .testTarget(name: "NetworkingTests", dependencies: ["Networking"]),
        .testTarget(name: "ImagePipelineTests", dependencies: ["ImagePipeline"]),
        .testTarget(name: "PersistenceTests", dependencies: ["Persistence"]),
    ]
)
