// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "PaymentsApprizaPay",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "PaymentsApprizaPay",
            type: .static,
            targets: ["PaymentsSDKDeps"]
        )
    ],
    dependencies: [
        .package(
            name: "AlCore",
            url: "https://github.com/Alviere/alviere-core-ios.git",
            .exact("0.9.20")
        ),
        .package(
            name: "AlCamera",
            url: "https://github.com/Alviere/alviere-camera-ios.git",
            .exact("1.0.6")
        )
    ],
    targets: [
        .target(
            name: "PaymentsSDKDeps",
            dependencies: [
                "PaymentsApprizaPay",
                "AlCore",
                "AlCamera"
            ],
            path: "PaymentsSDKDeps"
        ),
        .binaryTarget(
            name: "PaymentsApprizaPay",
            url: "https://github.com/JulioApprizaPay/alviere-payments-ios/releases/download/0.9.20/Payments.xcframework.zip",
            checksum: "4a503df0396bb4394ebcc782b0d4601a21ebb7bf01fe41011b48e4a38dce7af3"
        )
    ]
)
