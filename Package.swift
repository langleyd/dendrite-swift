// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let releaseVersion = "0.12.1"
let relaseChecksum = ""
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
