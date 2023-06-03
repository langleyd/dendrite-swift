// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let releaseVersion = "0.12.0"
let releaseChecksum = "2aeb0ee751015d7c903d0be838c9882e0227d1229098f5bdeaa44d14849cfc87"
let url = "https://github.com/matrix-org/dendrite-swift/releases/download/\(releaseVersion)/DendriteP2PGobind.xcframework.zip"

let package = Package(
    name: "dendrite-swift",
    products: [
        .library(
            name: "DendriteSwift",
            targets: [
                "DendriteSwift"
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "DendriteSwift",
            url: url,
            checksum: releaseVersion
        )
    ]
)
