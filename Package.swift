// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "ECashKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "ECashKit",
            targets: ["ECashKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/curdicu/BitcoinCore.git", .branch("main")),
        .package(url: "https://github.com/curdicu/BitcoinCashKit.git", .branch("main")),
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0"),
    ],
    targets: [
        .target(
            name: "ECashKit",
            dependencies: [
                .product(name: "BitcoinCore", package: "BitcoinCore"),
                .product(name: "BitcoinCashKit", package: "BitcoinCashKit"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
            ]
        ),
    ]
)
