// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "common-swift",
    platforms: [.macOS(.v13), .iOS(.v16)],
    products: [
        .library(name: "OpenZergCommon", targets: ["OpenZergCommon"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SilverMelon233/connect-swift.git", revision: "1ea40e28da770e05ffce70659c6f378c7d99eb29"),
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.36.1"),
    ],
    targets: [
        .target(
            name: "OpenZergCommon",
            dependencies: [
                .product(name: "Connect", package: "connect-swift"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
            ],
            path: "gen"
        ),
    ]
)
