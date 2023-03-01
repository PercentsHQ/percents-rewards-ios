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
            targets: ["PercentsRewardsTargets"])
    ],
    dependencies: [
        .package(url: "https://github.com/lorenzofiamingo/swiftui-cached-async-image", .upToNextMajor(from: "2.0.0"))
    ],
    targets: [
        .binaryTarget(
            name: "PercentsRewards",
            path: "PercentsRewards.xcframework"
        ),
        .target(
            name: "PercentsRewardsTargets",
            dependencies: [
                .target(name: "PercentsRewards"),
                .product(name: "CachedAsyncImage", package: "swiftui-cached-async-image")
            ],
            path: "Sources"
        )
    ]
)
