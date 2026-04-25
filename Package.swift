// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "common-swift",
    platforms: [.macOS(.v13), .iOS(.v16)],
    products: [
        .library(name: "OpenZergCommon", targets: ["OpenZergCommon"]),
    ],
    dependencies: [
        .package(url: "https://github.com/connectrpc/connect-swift.git", from: "1.2.2"),
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
