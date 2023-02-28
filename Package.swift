// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "PercentsRewards",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "PercentsRewards",
            targets: ["PercentsRewards"])
    ],
    targets: [
        .binaryTarget(
            name: "PercentsRewards",
            path: "PercentsRewards.xcframework"
        )
    ]
)
