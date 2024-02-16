// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libpng",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .tvOS(.v12),
        .watchOS(.v4),
        .visionOS(.v1),
    ],
    products: [
        .library(
            name: "Clibpng",
            targets: ["Clibpng"]
        )
    ],
    targets: [
        .target(
            name: "Clibpng",
            linkerSettings: [
                .linkedLibrary("z")
            ]
        )
    ]
)
