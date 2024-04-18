// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestSPM",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "TestSPM",
            targets: ["TestSPM"]),
    ],
    dependencies: [
        .package(url: "git@github.com:kean/Nuke.git", from: "12.0.0"),
    ],
    targets: [
        .target(
            name: "TestSPM",
            dependencies: ["TestSPMPrivate"]
        ),
        .target(
            name: "TestSPMPrivate",
            dependencies: ["Nuke"]
        ),
        .testTarget(
            name: "TestSPMTests",
            dependencies: ["TestSPM"]),
    ]
)
