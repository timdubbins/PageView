// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PageView",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v14)
    ],
    products: [
        .library(name: "PageView", targets: ["PageView"]),
    ],
    targets: [
        .target(name: "PageView", path: "Sources"),
        .testTarget(name: "PageViewTests", dependencies: ["PageView"]),
    ]
)
