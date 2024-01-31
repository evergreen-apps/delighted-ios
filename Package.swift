// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Delighted",
    platforms: [
      .iOS(.v12)
    ],
    products: [
        .library(
            name: "Delighted",
            targets: ["Delighted"]
        )
    ],
    dependencies: [
      .package(url: "https://github.com/daltoniam/Starscream.git", .exact("4.0.4"))
    ],
    targets: [
        .target(
            name: "Delighted",
            dependencies: ["Starscream"],
            resources: [.process("Assets")]
        )
    ]
)
